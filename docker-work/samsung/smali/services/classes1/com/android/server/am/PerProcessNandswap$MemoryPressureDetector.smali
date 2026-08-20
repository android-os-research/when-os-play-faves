.class public final Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryPressureDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;
    }
.end annotation


# static fields
.field public static final MEM_PRESSURE_HIGH:I = 0x2

.field public static final MEM_PRESSURE_LOW:I = 0x1

.field public static final MEM_PRESSURE_NONE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MemoryPressureDetector"


# instance fields
.field public mAvailable:Z

.field public final mDetectorThread:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

.field public mPressureState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPressureStateLock"
        }
    .end annotation
.end field

.field public final mPressureStateLock:Ljava/lang/Object;

.field public mRecentNandswapMS:J

.field public mTrialThrottlingMS:I

.field public final self:Lcom/android/server/am/PerProcessNandswap;

.field public final synthetic this$0:Lcom/android/server/am/PerProcessNandswap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPressureStateLock(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentNandswapMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrialThrottlingMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetself(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;)Lcom/android/server/am/PerProcessNandswap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->self:Lcom/android/server/am/PerProcessNandswap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAvailable(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPressureState(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRecentNandswapMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTrialThrottlingMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->setTrialThrottlingMS(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;III)V
    .registers 8

    .line 2144
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2128
    iput-wide v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    .line 2130
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureStateLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2132
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    .line 2145
    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->self:Lcom/android/server/am/PerProcessNandswap;

    .line 2146
    iput p3, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    .line 2147
    invoke-static {p2, p4, p5}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$minitMemoryPressureDetectorNative(Lcom/android/server/am/PerProcessNandswap;II)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2c

    .line 2148
    new-instance p1, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    invoke-direct {p1, p0, p3}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;-><init>(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread-IA;)V

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mDetectorThread:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    .line 2149
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    .line 2150
    iput-boolean p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    goto :goto_30

    .line 2152
    :cond_2c
    iput-object p3, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mDetectorThread:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    .line 2153
    iput-boolean p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    :goto_30
    return-void
.end method


# virtual methods
.method public getPressure()I
    .registers 2

    .line 2169
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2170
    :try_start_3
    iget p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 2171
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final init()V
    .registers 1

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 2165
    iget-boolean p0, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    return p0
.end method

.method public final setTrialThrottlingMS(I)V
    .registers 2

    .line 2158
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    return-void
.end method
