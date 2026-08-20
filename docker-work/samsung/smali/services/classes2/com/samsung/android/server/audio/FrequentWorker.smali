.class public abstract Lcom/samsung/android/server/audio/FrequentWorker;
.super Ljava/lang/Object;
.source "FrequentWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mCachedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mLastProcessTime:J

.field public mPeriodMs:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    return-void
.end method


# virtual methods
.method public abstract func()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final runOrSkip()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 32
    iget-wide v2, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_12

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-object p0

    .line 36
    :cond_12
    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FrequentWorker;->func()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-object v0
.end method
