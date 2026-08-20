.class public Lcom/android/server/blob/BlobStoreManagerService;
.super Lcom/android/server/SystemService;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreManagerService$Injector;,
        Lcom/android/server/blob/BlobStoreManagerService$LocalService;,
        Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;,
        Lcom/android/server/blob/BlobStoreManagerService$Stub;,
        Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;,
        Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;
    }
.end annotation


# instance fields
.field public final mActiveBlobIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBlobsLock:Ljava/lang/Object;

.field public final mBlobsMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentMaxSessionId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

.field public final mKnownBlobIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRandom:Ljava/util/Random;

.field public final mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

.field public final mSaveSessionsRunnable:Ljava/lang/Runnable;

.field public final mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field public final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;


# direct methods
.method public static synthetic $r8$lambda$5JiLp6FArwNHRjy3qCl1v6pO75A(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessions()V

    return-void
.end method

.method public static synthetic $r8$lambda$6pJ0a8qVFheWb5GWZGyOWMwZscg(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$onStateChangedInternal$11(Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$742KXJQS5y5y9vVuMACAI0mcWZE(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/Map$Entry;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$runClearAllBlobs$17(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bj5HItzV05EzIyF1Y02An8bdqz0(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/Map$Entry;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handleUserRemoved$14(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FMCdTg9bwDualRVYo5UuyhvrJpk(Ljava/lang/String;ILandroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$releaseAllLeasesInternal$5(Ljava/lang/String;ILandroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IjuYShneZHng_C5xDNH-7QjfNTg(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfo()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mh2tHgF_Fj1qdNMAFDWJ9IiJx4k(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getLeasedBlobsCountLocked$2(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MwR2FLCU3LPqU2tUWpCiFKVXwMc(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handleIdleMaintenanceLocked$16(Ljava/util/ArrayList;JLcom/android/server/blob/BlobStoreSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TXzPBOfiJH1gc5xcJ6zfPJQUobg(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$7(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMpDCWAF0ALzmuj4AUP_Sd1Ock8(ILjava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$8(ILjava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$el6umvxtfqfr4DKBcZ8t-OVXm8Y(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$releaseLeaseInternal$4(Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ey-hwBRYEwXBt9MlPNTmAzvjzEw(Ljava/lang/String;ILjava/util/ArrayList;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getLeasedBlobsInternal$10(Ljava/lang/String;ILjava/util/ArrayList;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fhcZ3XYjcc5ocSyafJDV2TGviSQ(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getTotalUsageBytesLocked$3(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fy-PPOW3hBd3bN0BCwc8eyBAevs(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handlePackageRemoved$12(ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ieVIcn-BUYeekU8ydqHGsQzkrN8(Ljava/util/List;ILcom/android/server/blob/BlobMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$pullBlobData$18(Ljava/util/List;ILcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSxJ7CVYG5DOkEQOyeXKn6cZfxA(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getSessionsCountLocked$0(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jTVxMlq7LMEG-RHQMbLgSI6-GpM(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getCommittedBlobsCountLocked$1(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jvW9tJZMah9kvbAPtah0VnD9CgM(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handleIdleMaintenanceLocked$15(Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oXuGhaK3ovMvSuF9EYCNu1BDXw0(Lcom/android/server/blob/BlobStoreManagerService;JLjava/util/Map$Entry;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$deleteBlobInternal$9(JLjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w4sT0GDxfbVhLzSDyFeT68caG6E(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$6(Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$znZ8fI4Oip50vpJrKi4WbD04DC4(Lcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;ILjava/util/Map$Entry;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handlePackageRemoved$13(Ljava/lang/String;ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlobsLock(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentMaxSessionId(Lcom/android/server/blob/BlobStoreManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mabandonSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->abandonSessionInternal(JILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/blob/BlobStoreManagerService;->acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobInternal(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpBlobsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpSessionsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLeaseInfoInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLeasedBlobsInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemainingLeaseQuotaBytesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUserRemoved(Lcom/android/server/blob/BlobStoreManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->isAllowedBlobStoreAccess(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monStateChangedInternal(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mopenSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpullBlobData(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->pullBlobData(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mqueryBlobsForUserInternal(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->queryBlobsForUserInternal(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreleaseAllLeasesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->releaseAllLeasesInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->verifyCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminitializeMessageHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/server/blob/BlobStoreManagerService;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 182
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;-><init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 161
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 165
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    .line 171
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 176
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 178
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

    .line 191
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public static initializeMessageHandler()Landroid/os/Handler;
    .registers 4

    .line 196
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "BlobStore"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-object v1
.end method

.method private synthetic lambda$deleteBlobInternal$9(JLjava/util/Map$Entry;)Z
    .registers 6

    .line 625
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/blob/BlobMetadata;

    .line 626
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_13

    .line 627
    invoke-virtual {p0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$getCommittedBlobsCountLocked$1(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 431
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 432
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_9
    return-void
.end method

.method public static synthetic lambda$getLeasedBlobsCountLocked$2(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 443
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 444
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_9
    return-void
.end method

.method public static synthetic lambda$getLeasedBlobsInternal$10(Ljava/lang/String;ILjava/util/ArrayList;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 641
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 642
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static synthetic lambda$getSessionsCountLocked$0(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5

    .line 339
    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_13

    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 340
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_13
    return-void
.end method

.method public static synthetic lambda$getTotalUsageBytesLocked$3(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 516
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 517
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_d
    return-void
.end method

.method private synthetic lambda$handleIdleMaintenanceLocked$15(Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z
    .registers 6

    .line 1123
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    .line 1126
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->removeExpiredLeases()V

    const/4 v0, 0x1

    .line 1128
    invoke-virtual {p2, v0}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1129
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1130
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleIdleMaintenanceLocked$16(Ljava/util/ArrayList;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 5

    .line 1144
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->isExpired()Z

    move-result p2

    .line 1149
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result p3

    if-eqz p3, :cond_f

    const/4 p2, 0x1

    :cond_f
    if-eqz p2, :cond_1f

    .line 1154
    invoke-virtual {p0, p4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1155
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return p2
.end method

.method private synthetic lambda$handlePackageRemoved$12(ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 6

    .line 1036
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result p3

    if-ne p3, p1, :cond_15

    .line 1037
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1038
    invoke-virtual {p0, p5}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handlePackageRemoved$13(Ljava/lang/String;ILjava/util/Map$Entry;)Z
    .registers 5

    .line 1047
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/blob/BlobMetadata;

    .line 1048
    invoke-virtual {p3, p1, p2}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1050
    invoke-virtual {p3, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Ljava/lang/String;I)V

    .line 1052
    :cond_f
    invoke-virtual {p3, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 1055
    invoke-virtual {p3, v0}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1056
    invoke-virtual {p0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleUserRemoved$14(ILjava/util/Map$Entry;)Z
    .registers 4

    .line 1082
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    .line 1083
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    const/4 p1, 0x1

    .line 1084
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onStateChangedInternal$11(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 3

    .line 693
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->computeDigest()V

    .line 694
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 695
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 694
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$pullBlobData$18(Ljava/util/List;ILcom/android/server/blob/BlobMetadata;)V
    .registers 3

    .line 1930
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->dumpAsStatsEvent(I)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$queryBlobsForUserInternal$6(Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;
    .registers 5

    .line 585
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    .line 586
    :cond_a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    :goto_10
    if-nez v0, :cond_20

    .line 588
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p2}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 589
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v0
.end method

.method public static synthetic lambda$queryBlobsForUserInternal$7(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V
    .registers 11

    .line 599
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 602
    :cond_7
    iget v0, p4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p0, v0, :cond_10

    return-void

    .line 605
    :cond_10
    iget-object p0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_26

    .line 607
    :cond_16
    iget-object p0, p4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    iget-object p1, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v0, p4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_26
    move v4, p0

    .line 609
    iget-wide p0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_33

    .line 610
    invoke-virtual {p2}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide p0

    :cond_33
    move-wide v2, p0

    .line 611
    new-instance p0, Landroid/app/blob/LeaseInfo;

    iget-object v1, p4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$queryBlobsForUserInternal$8(ILjava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 15

    .line 594
    invoke-virtual {p4, p0}, Lcom/android/server/blob/BlobMetadata;->hasACommitterOrLeaseeInUser(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 597
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, v9}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p4, v0}, Lcom/android/server/blob/BlobMetadata;->forEachLeasee(Ljava/util/function/Consumer;)V

    .line 614
    new-instance p0, Landroid/app/blob/BlobInfo;

    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    .line 615
    invoke-virtual {p3}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    .line 616
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/app/blob/BlobInfo;-><init>(JJLjava/lang/CharSequence;JLjava/util/List;)V

    .line 614
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$releaseAllLeasesInternal$5(Ljava/lang/String;ILandroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 561
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$releaseLeaseInternal$4(Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 543
    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x1

    .line 545
    invoke-virtual {p2, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 546
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 547
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 550
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method private synthetic lambda$runClearAllBlobs$17(ILjava/util/Map$Entry;)Z
    .registers 5

    .line 1201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_18

    .line 1203
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return v0

    .line 1206
    :cond_18
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    const/4 p1, 0x0

    .line 1207
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1208
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return v0

    :cond_30
    return p1
.end method


# virtual methods
.method public final abandonSessionInternal(JILjava/lang/String;)V
    .registers 9

    .line 386
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 390
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->abandon()V

    .line 391
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v1, :cond_37

    const-string v1, "BlobStore"

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abandoned session with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 396
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 453
    iget-object v11, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 454
    :try_start_9
    invoke-virtual {p0, v9, v10}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsCountLocked(ILjava/lang/String;)I

    move-result v7

    .line 455
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxLeasedBlobs()I

    move-result v2

    if-ge v7, v2, :cond_100

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-eqz v4, :cond_38

    .line 462
    iget-wide v4, v1, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_38

    cmp-long v2, p4, v4

    if-gtz v2, :cond_24

    goto :goto_38

    :cond_24
    const/16 v0, 0x12b

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move/from16 v1, p6

    .line 464
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lease expiry cannot be later than blobs expiry time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_38
    :goto_38
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/blob/BlobMetadata;

    if-eqz v12, :cond_ba

    .line 472
    invoke-virtual {v12, v10, v9}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_ba

    .line 487
    :cond_4a
    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v2

    .line 488
    invoke-virtual {p0, v9, v10}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a2

    const/16 v2, 0x12b

    .line 498
    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v6

    const/4 v8, 0x1

    move/from16 v3, p6

    .line 497
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    move-object v2, v12

    move-object/from16 v3, p7

    move/from16 v4, p6

    move v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 501
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 503
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_9d

    const-string v2, "BlobStore"

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquired lease on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; callingUid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 508
    monitor-exit v11

    return-void

    :cond_a2
    const/16 v0, 0x12b

    .line 491
    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v4

    const/4 v6, 0x5

    move/from16 v1, p6

    .line 490
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 493
    new-instance v0, Landroid/os/LimitExceededException;

    const-string v1, "Total amount of data with an active lease is exceeding the max limit"

    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    :goto_ba
    if-nez v12, :cond_c9

    const/16 v2, 0x12b

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    move/from16 v3, p6

    .line 475
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_d9

    :cond_c9
    const/16 v2, 0x12b

    .line 480
    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    move/from16 v3, p6

    .line 479
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 483
    :goto_d9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller not allowed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; callingUid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_100
    const/16 v0, 0x12b

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    move/from16 v1, p6

    .line 456
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 459
    new-instance v0, Landroid/os/LimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many leased blobs for the caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_123
    move-exception v0

    .line 508
    monitor-exit v11
    :try_end_125
    .catchall {:try_start_9 .. :try_end_125} :catchall_123

    throw v0
.end method

.method public final addActiveBlobIdLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addActiveIdsForTest([J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    aget-wide v3, p1, v2

    .line 296
    invoke-virtual {p0, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 298
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    return-void
.end method

.method public final addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    return-void
.end method

.method public addUserSessionsForTest(Landroid/util/LongSparseArray;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .registers 16

    .line 348
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->getSessionsCountLocked(ILjava/lang/String;)I

    move-result v1

    .line 350
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxActiveSessions()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 355
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->generateNextSessionIdLocked()J

    move-result-wide v1

    .line 356
    new-instance v11, Lcom/android/server/blob/BlobStoreSession;

    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    move-object v3, v11

    move-wide v5, v1

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 359
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v11, v3}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    .line 360
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_50

    const-string v3, "BlobStore"

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 365
    monitor-exit v0

    return-wide v1

    .line 351
    :cond_55
    new-instance p0, Landroid/os/LimitExceededException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many active sessions for the caller: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6c
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public deleteBlob(Landroid/app/blob/BlobHandle;I)V
    .registers 5

    .line 1218
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    if-nez v1, :cond_f

    .line 1221
    monitor-exit v0

    return-void

    .line 1223
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    const/4 p2, 0x0

    .line 1224
    invoke-virtual {v1, p2}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1225
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1226
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1229
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final deleteBlobInternal(JI)V
    .registers 6

    .line 623
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter p3

    .line 624
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/blob/BlobStoreManagerService;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 632
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 633
    monitor-exit p3

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 1173
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->destroy()V

    .line 1174
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 1167
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->destroy()V

    .line 1168
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dumpBlobsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of blobs ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1282
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_62

    .line 1283
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 1284
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlob(J)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_5f

    .line 1287
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1289
    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1290
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1292
    :cond_62
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string p0, "<empty>"

    .line 1293
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    :cond_6f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpSessionsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_93

    .line 1254
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1255
    invoke-virtual {p2, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpUser(I)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_8f

    .line 1258
    :cond_18
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of sessions in user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1262
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    move v5, v1

    :goto_4d
    if-ge v5, v3, :cond_8c

    .line 1263
    invoke-virtual {v4, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1264
    invoke-virtual {v4, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    .line 1265
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1266
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    .line 1265
    invoke-virtual {p2, v9, v10, v11, v12}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSession(Ljava/lang/String;IJ)Z

    move-result v9

    if-nez v9, :cond_6c

    goto :goto_89

    .line 1269
    :cond_6c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Session #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1271
    invoke-virtual {v8, p1, p2}, Lcom/android/server/blob/BlobStoreSession;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1272
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 1274
    :cond_8c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_93
    return-void
.end method

.method public final forEachBlob(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1373
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 1374
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final forEachBlobLocked(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 1388
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 1389
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 1390
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public final forEachBlobLocked(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1380
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 1381
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final forEachSessionInUser(Ljava/util/function/Consumer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 1362
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 1364
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    :goto_c
    if-ge p2, v1, :cond_1a

    .line 1365
    invoke-virtual {p0, p2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobStoreSession;

    .line 1366
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 1368
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

.method public final generateNextSessionIdLocked()J
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_11

    move-wide v1, v4

    goto :goto_15

    .line 239
    :cond_11
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 240
    :goto_15
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_26

    cmp-long v3, v1, v4

    if-eqz v3, :cond_26

    return-wide v1

    :cond_26
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_2e

    move v0, v1

    goto :goto_1

    .line 244
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate session ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveIdsForTest()Ljava/util/Set;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getAllPackages()Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 995
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 996
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 997
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_47

    aget v5, v1, v4

    .line 998
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 999
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v8, 0xc2000

    .line 1004
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    .line 1001
    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v5

    .line 1005
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_32
    if-ge v8, v7, :cond_44

    .line 1006
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1007
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_47
    return-object v0
.end method

.method public getBlobForTest(Landroid/app/blob/BlobHandle;)Lcom/android/server/blob/BlobMetadata;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 282
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getBlobsCountForTest()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getCommittedBlobsCountLocked(ILjava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 430
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 435
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getKnownIdsForTest()Ljava/util/Set;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 312
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .registers 7

    .line 651
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    if-eqz p0, :cond_19

    .line 653
    invoke-virtual {p0, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 658
    invoke-virtual {p0, p3, p2}, Lcom/android/server/blob/BlobMetadata;->getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 655
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_40
    move-exception p0

    .line 659
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final getLeasedBlobsCountLocked(ILjava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 442
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 447
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_8
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 645
    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception p0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_3
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getAppDataBytesLimit()J

    move-result-wide v1

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getTotalUsageBytesLocked(ILjava/lang/String;)J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x0

    cmp-long p2, v1, p0

    if-lez p2, :cond_13

    goto :goto_14

    :cond_13
    move-wide v1, p0

    .line 576
    :goto_14
    monitor-exit v0

    return-wide v1

    :catchall_16
    move-exception p0

    .line 577
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final getSessionsCountLocked(ILjava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 338
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 342
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 338
    invoke-virtual {p0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    .line 343
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getTotalUsageBytesLocked(ILjava/lang/String;)J
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 514
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 515
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 520
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getUserSessionsLocked(I)Landroid/util/LongSparseArray;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_14

    .line 265
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 266
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public handleIdleMaintenanceLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir()Ljava/io/File;

    move-result-object v2

    .line 1103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "BlobStore"

    const/4 v5, 0x0

    if-eqz v3, :cond_6e

    .line 1104
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v6, v5

    :goto_1d
    if-ge v6, v3, :cond_5b

    aget-object v7, v2, v6

    .line 1106
    :try_start_21
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1107
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_58

    .line 1108
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_3f} :catch_40

    goto :goto_58

    :catch_40
    move-exception v8

    .line 1112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing the file name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 1116
    :cond_5b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v5

    :goto_60
    if-ge v3, v2, :cond_6e

    .line 1117
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 1122
    :cond_6e
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1138
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_85
    if-ge v5, v1, :cond_9a

    .line 1139
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 1140
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 1160
    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed idle maintenance; deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    return-void
.end method

.method public handlePackageRemoved(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1035
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1046
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1063
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_49

    const-string p0, "BlobStore"

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed blobs data associated with pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public final handleUserRemoved(I)V
    .registers 7

    .line 1071
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 1073
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-eqz v1, :cond_20

    const/4 v2, 0x0

    .line 1075
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    :goto_12
    if-ge v2, v3, :cond_20

    .line 1076
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 1077
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1081
    :cond_20
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1090
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_48

    const-string p0, "BlobStore"

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed blobs data in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final isAllowedBlobStoreAccess(ILjava/lang/String;)Z
    .registers 4

    .line 1395
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1396
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isBlobAvailable(JI)Z
    .registers 11

    .line 1239
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    .line 1241
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata;

    .line 1242
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1245
    :cond_20
    invoke-virtual {v4, p3}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1247
    :cond_26
    monitor-exit v0

    return v2

    :catchall_28
    move-exception p0

    .line 1248
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 219
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/blob/BlobStoreConfig;->initialize(Landroid/content/Context;)V

    goto :goto_2c

    :cond_a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_23

    .line 221
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getAllPackages()Landroid/util/SparseArray;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobSessionsLocked(Landroid/util/SparseArray;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobsInfoLocked(Landroid/util/SparseArray;)V

    .line 225
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 226
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerBlobStorePuller()V

    goto :goto_2c

    :catchall_20
    move-exception p0

    .line 225
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2c

    .line 228
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/blob/BlobStoreIdleJobService;->schedule(Landroid/content/Context;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 206
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$Stub-IA;)V

    const-string v2, "blob_store"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 207
    const-class v0, Lcom/android/server/blob/BlobStoreManagerInternal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$LocalService-IA;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 209
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/StatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 211
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerReceivers()V

    .line 212
    const-class v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter-IA;)V

    const-string p0, "BlobStore"

    .line 213
    invoke-interface {v0, v2, p0}, Lcom/android/server/usage/StorageStatsManagerLocal;->registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;Ljava/lang/String;)V

    return-void
.end method

.method public final onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_19a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_34

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1a5

    const-string v0, "BlobStore"

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid session state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    .line 699
    :cond_34
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 701
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-virtual {v1, v0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->getCommittedBlobsCountLocked(ILjava/lang/String;)I

    move-result v0

    .line 702
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxCommittedBlobs()I

    move-result v4

    const/4 v5, 0x1

    if-lt v0, v4, :cond_96

    const-string v4, "BlobStore"

    .line 703
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to commit: too many committed blobs. count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; blob: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v2, v5}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 706
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    const/16 v6, 0x12a

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v10

    const/4 v12, 0x4

    .line 709
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 712
    monitor-exit v3

    goto/16 :goto_1d9

    .line 715
    :cond_96
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_ac

    .line 717
    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    :goto_aa
    move-object v4, v0

    goto :goto_bf

    .line 719
    :cond_ac
    new-instance v0, Lcom/android/server/blob/BlobMetadata;

    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v6

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v8

    invoke-direct {v0, v4, v6, v7, v8}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 721
    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_aa

    .line 724
    :goto_bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v6

    .line 723
    invoke-virtual {v4, v0, v6}, Lcom/android/server/blob/BlobMetadata;->getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v6

    if-nez v6, :cond_d0

    const-wide/16 v7, 0x0

    goto :goto_d4

    .line 726
    :cond_d0
    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v7

    .line 727
    :goto_d4
    new-instance v15, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v10

    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;

    move-result-object v12

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 729
    invoke-static {v7, v8, v13, v14}, Lcom/android/server/blob/BlobStoreConfig;->getAdjustedCommitTimeMs(JJ)J

    move-result-wide v13

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    .line 731
    invoke-virtual {v4, v15}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    :try_end_f1
    .catchall {:try_start_37 .. :try_end_f1} :catchall_197

    .line 733
    :try_start_f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V

    const/16 v16, 0x12a

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v20

    const/16 v22, 0x1

    .line 734
    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    const/4 v0, 0x0

    .line 737
    invoke-virtual {v2, v0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10b} :catch_10c
    .catchall {:try_start_f1 .. :try_end_10b} :catchall_197

    goto :goto_159

    :catch_10c
    move-exception v0

    if-nez v6, :cond_113

    .line 740
    :try_start_10f
    invoke-virtual {v4, v15}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    goto :goto_116

    .line 742
    :cond_113
    invoke-virtual {v4, v6}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    :goto_116
    const-string v6, "BlobStore"

    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error committing the blob: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v8, 0x12a

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v12

    const/4 v14, 0x2

    .line 745
    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 748
    invoke-virtual {v2, v5}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_159

    .line 752
    invoke-virtual {v1, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 753
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_159
    :goto_159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_168

    .line 758
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 760
    :cond_168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 762
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_195

    const-string v0, "BlobStore"

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully committed session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_195
    monitor-exit v3

    goto :goto_1d9

    :catchall_197
    move-exception v0

    monitor-exit v3
    :try_end_199
    .catchall {:try_start_10f .. :try_end_199} :catchall_197

    throw v0

    .line 692
    :cond_19a
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d9

    .line 682
    :cond_1a5
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 683
    :try_start_1a8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 686
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_1d8

    const-string v0, "BlobStore"

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session is invalid; deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_1d8
    monitor-exit v3
    :try_end_1d9
    .catchall {:try_start_1a8 .. :try_end_1d9} :catchall_1e6

    .line 771
    :goto_1d9
    iget-object v2, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 773
    :try_start_1dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1df} :catch_1e2
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1e0

    goto :goto_1e2

    :catchall_1e0
    move-exception v0

    goto :goto_1e4

    .line 777
    :catch_1e2
    :goto_1e2
    :try_start_1e2
    monitor-exit v2

    return-void

    :goto_1e4
    monitor-exit v2
    :try_end_1e5
    .catchall {:try_start_1e2 .. :try_end_1e5} :catchall_1e0

    throw v0

    :catchall_1e6
    move-exception v0

    .line 689
    :try_start_1e7
    monitor-exit v3
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e6

    throw v0
.end method

.method public final openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    if-eqz p0, :cond_29

    .line 403
    invoke-virtual {p0, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_29

    :cond_14
    const/16 v2, 0x12c

    .line 419
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v6

    const/4 v8, 0x1

    move v3, p2

    .line 418
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 422
    invoke-virtual {p0, p3, p2}, Lcom/android/server/blob/BlobMetadata;->openForRead(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_29
    :goto_29
    if-nez p0, :cond_37

    const/16 v1, 0x12c

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    move v2, p2

    .line 406
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_46

    :cond_37
    const/16 v1, 0x12c

    .line 411
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v5

    const/4 v7, 0x3

    move v2, p2

    .line 410
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 414
    :goto_46
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6d
    move-exception p0

    .line 423
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 373
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object p0

    .line 374
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobStoreSession;

    if-eqz p0, :cond_24

    .line 375
    invoke-virtual {p0, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->hasAccess(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_24

    .line 376
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result p3

    if-nez p3, :cond_24

    .line 379
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3b

    .line 380
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->open()V

    return-object p0

    .line 377
    :cond_24
    :try_start_24
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Session not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3b
    move-exception p0

    .line 379
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final prepareBlobsIndexFile()Landroid/util/AtomicFile;
    .registers 3

    .line 1022
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobsIndexFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1026
    :cond_8
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "blobs_index"

    invoke-direct {v0, p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final prepareSessionsIndexFile()Landroid/util/AtomicFile;
    .registers 3

    .line 1014
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareSessionIndexFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1018
    :cond_8
    new-instance v0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "session_index"

    invoke-direct {v0, p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final pullBlobData(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1930
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final queryBlobsForUserInternal(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 583
    :try_start_8
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 584
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V

    .line 593
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/util/function/Function;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/BiConsumer;)V

    .line 618
    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final readBlobSessionsLocked(Landroid/util/SparseArray;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 821
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 824
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    const-string v1, "BlobStore"

    if-nez v0, :cond_19

    const-string p0, "Error creating sessions index file"

    .line 826
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 828
    :cond_19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    .line 829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sessions index file not available: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 833
    :cond_38
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 834
    :try_start_3d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_da

    .line 835
    :try_start_41
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 836
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v3, "ss"

    .line 837
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v3, "v"

    .line 838
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 840
    :cond_5b
    :goto_5b
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 841
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_74

    .line 865
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_6e

    const-string p0, "Finished reading sessions data"

    .line 866
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_ce

    :cond_6e
    if-eqz v0, :cond_e0

    .line 868
    :try_start_70
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_da

    goto :goto_e0

    :cond_74
    :try_start_74
    const-string/jumbo v4, "s"

    .line 845
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 846
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/blob/BlobStoreSession;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v4

    if-nez v4, :cond_8c

    goto :goto_5b

    .line 852
    :cond_8c
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 851
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_ba

    .line 854
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v6

    .line 855
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 854
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 857
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 856
    invoke-virtual {p0, v4, v5}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    goto :goto_c1

    .line 860
    :cond_ba
    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 862
    :goto_c1
    iget-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v4}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J
    :try_end_cd
    .catchall {:try_start_74 .. :try_end_cd} :catchall_ce

    goto :goto_5b

    :catchall_ce
    move-exception p0

    if-eqz v0, :cond_d9

    .line 834
    :try_start_d1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception p1

    :try_start_d6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d9
    :goto_d9
    throw p0
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_da} :catch_da

    :catch_da
    move-exception p0

    const-string p1, "Error reading sessions data"

    .line 869
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e0
    :goto_e0
    return-void
.end method

.method public final readBlobsInfoLocked(Landroid/util/SparseArray;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 910
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 913
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    const-string v1, "BlobStore"

    if-nez v0, :cond_19

    const-string p0, "Error creating blobs index file"

    .line 915
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 917
    :cond_19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    .line 918
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Blobs index file not available: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 922
    :cond_38
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 923
    :try_start_3d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_c7

    .line 924
    :try_start_41
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 925
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v3, "bs"

    .line 926
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v3, "v"

    .line 927
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 929
    :cond_5a
    :goto_5a
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 930
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_73

    .line 954
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_6d

    const-string p0, "Finished reading blobs data"

    .line 955
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_bb

    :cond_6d
    if-eqz v0, :cond_cd

    .line 957
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_c7

    goto :goto_cd

    :cond_73
    :try_start_73
    const-string v4, "b"

    .line 934
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 935
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/android/server/blob/BlobMetadata;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;

    move-result-object v4

    .line 937
    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata;->removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 938
    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata;->removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 939
    iget-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    const/4 v5, 0x6

    if-lt v3, v5, :cond_9e

    .line 941
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_5a

    .line 943
    :cond_9e
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 944
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v6

    .line 943
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata;

    if-nez v5, :cond_b0

    .line 946
    invoke-virtual {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_5a

    .line 948
    :cond_b0
    invoke-virtual {v5, v4}, Lcom/android/server/blob/BlobMetadata;->addCommittersAndLeasees(Lcom/android/server/blob/BlobMetadata;)V

    .line 949
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_ba
    .catchall {:try_start_73 .. :try_end_ba} :catchall_bb

    goto :goto_5a

    :catchall_bb
    move-exception p0

    if-eqz v0, :cond_c6

    .line 923
    :try_start_be
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    goto :goto_c6

    :catchall_c2
    move-exception p1

    :try_start_c3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c6
    :goto_c6
    throw p0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception p0

    const-string p1, "Error reading blobs data"

    .line 958
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cd
    :goto_cd
    return-void
.end method

.method public final registerBlobStorePuller()V
    .registers 5

    .line 1909
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 1912
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2761

    const/4 v3, 0x0

    .line 1909
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerReceivers()V
    .registers 14

    .line 248
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 249
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 250
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 251
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver-IA;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 256
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;

    invoke-direct {v8, p0, v6}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver-IA;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v12, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseAllLeasesInternal(ILjava/lang/String;)V
    .registers 6

    .line 558
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 565
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_32

    const-string p0, "BlobStore"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release all leases associated with pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .registers 9

    .line 525
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    if-eqz v1, :cond_59

    .line 527
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 532
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 533
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_40

    const-string v2, "BlobStore"

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Released lease on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callingPackage="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_40
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result p2

    if-nez p2, :cond_54

    .line 538
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    .line 551
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getDeletionOnLastLeaseDelayMs()J

    move-result-wide v1

    .line 538
    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 554
    monitor-exit v0

    return-void

    .line 529
    :cond_59
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_80
    move-exception p0

    .line 554
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public runClearAllBlobs(I)V
    .registers 5

    .line 1199
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1214
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public runClearAllSessions(I)V
    .registers 12

    .line 1178
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/4 v4, -0x1

    if-ge v3, v1, :cond_41

    .line 1180
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eq p1, v4, :cond_19

    if-eq p1, v5, :cond_19

    goto :goto_3e

    .line 1184
    :cond_19
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 1185
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_26
    if-ge v6, v5, :cond_3e

    .line 1186
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_41
    if-ne p1, v4, :cond_49

    .line 1190
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_4e

    .line 1192
    :cond_49
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1194
    :goto_4e
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1195
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public runIdleMaintenance()V
    .registers 2

    .line 1233
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->handleIdleMaintenanceLocked()V

    .line 1235
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final verifyCallingPackage(ILjava/lang/String;)V
    .registers 6

    .line 663
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 664
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/16 v1, 0x0

    .line 663
    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p1, :cond_f

    return-void

    .line 665
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified calling package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] does not match the calling uid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeBlobSessions()V
    .registers 2

    .line 979
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p0

    goto :goto_b

    .line 985
    :catch_9
    :goto_9
    :try_start_9
    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7

    throw p0
.end method

.method public final writeBlobSessionsAsync()V
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 990
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final writeBlobSessionsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "s"

    const-string/jumbo v1, "ss"

    .line 782
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    const-string v3, "BlobStore"

    if-nez v2, :cond_14

    const-string p0, "Error creating sessions index file"

    .line 784
    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v4, 0x0

    .line 789
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_7e

    .line 790
    :try_start_1d
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 791
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 792
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 793
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "v"

    const/4 v8, 0x6

    .line 794
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 796
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_42
    if-ge v9, v7, :cond_68

    .line 797
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 798
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 799
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    move v12, v8

    :goto_51
    if-ge v12, v11, :cond_65

    .line 800
    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    invoke-virtual {v10, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v13, v6}, Lcom/android/server/blob/BlobStoreSession;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 802
    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    :cond_65
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 806
    :cond_68
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 808
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 809
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_7a

    const-string p0, "Finished persisting sessions data"

    .line 810
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7a} :catch_7b

    :cond_7a
    return-void

    :catch_7b
    move-exception p0

    move-object v4, v5

    goto :goto_7f

    :catch_7e
    move-exception p0

    .line 813
    :goto_7f
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v0, "Error writing sessions data"

    .line 814
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    throw p0
.end method

.method public final writeBlobsInfo()V
    .registers 2

    .line 963
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p0

    goto :goto_b

    .line 969
    :catch_9
    :goto_9
    :try_start_9
    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7

    throw p0
.end method

.method public final writeBlobsInfoAsync()V
    .registers 3

    .line 973
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 974
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final writeBlobsInfoLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBlobsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "b"

    const-string v1, "bs"

    .line 875
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    const-string v3, "BlobStore"

    if-nez v2, :cond_12

    const-string p0, "Error creating blobs index file"

    .line 877
    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v4, 0x0

    .line 882
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_6b

    .line 883
    :try_start_1b
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 884
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 885
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 886
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "v"

    const/4 v8, 0x6

    .line 887
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v7, 0x0

    .line 889
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    :goto_3f
    if-ge v7, v8, :cond_55

    .line 890
    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v9, v6}, Lcom/android/server/blob/BlobMetadata;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 892
    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 895
    :cond_55
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 897
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 898
    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz p0, :cond_67

    const-string p0, "Finished persisting blobs data"

    .line 899
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_67} :catch_68

    :cond_67
    return-void

    :catch_68
    move-exception p0

    move-object v4, v5

    goto :goto_6c

    :catch_6b
    move-exception p0

    .line 902
    :goto_6c
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v0, "Error writing blobs data"

    .line 903
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    throw p0
.end method
