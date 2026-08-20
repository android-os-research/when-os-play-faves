.class public Lcom/android/server/chimera/HeavyLaunchCounter;
.super Ljava/lang/Object;
.source "HeavyLaunchCounter.java"


# static fields
.field public static final DELAY:J = 0xa4cb80L


# instance fields
.field public mBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/util/Pair;",
            ">;"
        }
    .end annotation
.end field

.field public mBufferSize:I

.field public mIsHeavyLaunch:Z

.field public mLastStartedUpTime:J

.field public mLaunchCounter:I

.field public mLaunchPackageLimit:I

.field public mStartTime:J


# direct methods
.method public constructor <init>(II)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 12
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    const/16 v0, 0x19

    .line 13
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    .line 16
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/util/Pair;

    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 19
    iput-boolean v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    .line 21
    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    .line 24
    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 25
    iput p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    return-void
.end method


# virtual methods
.method public addLaunch(IJ)V
    .registers 8

    .line 30
    iget-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 32
    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long p1, v0, v2

    if-lez p1, :cond_86

    .line 36
    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_86

    .line 37
    iget-object p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Pair;

    .line 39
    array-length p3, p1

    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    if-ne p3, v0, :cond_86

    sub-int/2addr v0, p2

    .line 40
    aget-object p3, p1, v0

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_84

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, p3

    .line 43
    :goto_5d
    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    if-ge v1, v2, :cond_6d

    .line 44
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 47
    :cond_6d
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    if-lt p1, v0, :cond_81

    .line 48
    iput-boolean p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    goto :goto_86

    .line 52
    :cond_81
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    goto :goto_86

    .line 56
    :cond_84
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    :cond_86
    :goto_86
    return-void
.end method

.method public getLastStartedUpTime()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    return-wide v0
.end method

.method public isHeavyLaunch()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    return p0
.end method
