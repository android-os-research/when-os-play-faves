.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LowMemDetector$TrimMemThread;,
        Lcom/android/server/am/LowMemDetector$LowMemThread;,
        Lcom/android/server/am/LowMemDetector$MemFactor;
    }
.end annotation


# static fields
.field public static final ADJ_MEM_FACTOR_NOTHING:I = -0x1

.field public static final TAG:Ljava/lang/String; = "LowMemDetector"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAvailable:Z

.field public mHasTrimPressure:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTrimPressureStateLock"
        }
    .end annotation
.end field

.field public final mHasTrimPressureLock:Ljava/lang/Object;

.field public final mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

.field public mPressureState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPressureStateLock"
        }
    .end annotation
.end field

.field public final mPressureStateLock:Ljava/lang/Object;

.field public final mTrimMemThread:Lcom/android/server/am/LowMemDetector$TrimMemThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHasTrimPressureLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasTrimPressure(Lcom/android/server/am/LowMemDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressure:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mwaitForTrimPressure(Lcom/android/server/am/LowMemDetector;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForTrimPressure()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressureLock:Ljava/lang/Object;

    .line 53
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressure:Z

    const-string/jumbo v1, "ro.debuggable"

    .line 70
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v0

    .line 71
    :goto_23
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 72
    new-instance p1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$LowMemThread-IA;)V

    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    .line 73
    new-instance v4, Lcom/android/server/am/LowMemDetector$TrimMemThread;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/LowMemDetector$TrimMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$TrimMemThread-IA;)V

    iput-object v4, p0, Lcom/android/server/am/LowMemDetector;->mTrimMemThread:Lcom/android/server/am/LowMemDetector$TrimMemThread;

    if-nez v1, :cond_46

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_46

    .line 77
    :cond_3d
    iput-boolean v2, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 79
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_48

    .line 75
    :cond_46
    :goto_46
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    :goto_48
    return-void
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method

.method private native waitForTrimPressure()I
.end method


# virtual methods
.method public getMemFactor()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget p0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public hasTrimMemPressure()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/LowMemDetector;->mHasTrimPressure:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return p0
.end method
