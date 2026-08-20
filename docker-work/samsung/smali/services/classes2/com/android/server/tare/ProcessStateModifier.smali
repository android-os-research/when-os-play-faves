.class public Lcom/android/server/tare/ProcessStateModifier;
.super Lcom/android/server/tare/Modifier;
.source "ProcessStateModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/ProcessStateModifier$ProcStateBucket;
    }
.end annotation


# static fields
.field public static final PROC_STATE_BUCKET_BFGS:I = 0x3

.field public static final PROC_STATE_BUCKET_BG:I = 0x4

.field public static final PROC_STATE_BUCKET_FGS:I = 0x2

.field public static final PROC_STATE_BUCKET_NONE:I = 0x0

.field public static final PROC_STATE_BUCKET_TOP:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageToUidCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidProcStateBucketCache:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$SrX_Q-cHktXcKxBwbS7pZ1NnjpI(Lcom/android/server/tare/ProcessStateModifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->lambda$notifyStateChangedLocked$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/ProcessStateModifier;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidProcStateBucketCache(Lcom/android/server/tare/ProcessStateModifier;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProcStateBucket(Lcom/android/server/tare/ProcessStateModifier;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->getProcStateBucket(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tare/ProcessStateModifier;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tare/ProcessStateModifier;->notifyStateChangedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tare/ProcessStateModifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/ProcessStateModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/ProcessStateModifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    .line 64
    new-instance v0, Lcom/android/server/tare/ProcessStateModifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/ProcessStateModifier$1;-><init>(Lcom/android/server/tare/ProcessStateModifier;)V

    iput-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    .line 108
    iput-object p1, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-void
.end method

.method private synthetic lambda$notifyStateChangedLocked$0(I)V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->onUidStateChanged(I)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Proc state bucket cache = "

    .line 168
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getModifiedPrice(ILjava/lang/String;JJ)J
    .registers 9

    .line 144
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->getUid(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    .line 145
    invoke-virtual {v1, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    .line 147
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_29

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1b

    return-wide p5

    :cond_1b
    cmp-long p0, p5, p3

    if-gtz p0, :cond_20

    return-wide p5

    :cond_20
    long-to-double p0, p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-long/2addr p5, p3

    long-to-double p2, p5

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0

    .line 153
    :cond_29
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_2e
    const-wide/16 p0, 0x0

    return-wide p0

    :catchall_31
    move-exception p0

    .line 147
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getProcStateBucket(I)I
    .registers 3

    const/4 p0, 0x2

    if-gt p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 v0, 0x4

    if-gt p1, v0, :cond_9

    return p0

    :cond_9
    const/4 p0, 0x5

    if-gt p1, p0, :cond_e

    const/4 p0, 0x3

    return p0

    :cond_e
    return v0
.end method

.method public final notifyStateChangedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tare/ProcessStateModifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tare/ProcessStateModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/ProcessStateModifier;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setup()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public tearDown()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_9

    .line 131
    :catch_9
    iget-object v0, p0, Lcom/android/server/tare/ProcessStateModifier;->mPackageToUidCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 132
    iget-object p0, p0, Lcom/android/server/tare/ProcessStateModifier;->mUidProcStateBucketCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
