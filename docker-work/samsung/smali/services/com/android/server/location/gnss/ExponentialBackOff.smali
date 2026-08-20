.class public Lcom/android/server/location/gnss/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"


# static fields
.field public static final MULTIPLIER:I = 0x2


# instance fields
.field public mCurrentIntervalMillis:J

.field public final mInitIntervalMillis:J

.field public final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mInitIntervalMillis:J

    .line 30
    iput-wide p3, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mMaxIntervalMillis:J

    const-wide/16 p3, 0x2

    .line 32
    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .registers 6

    .line 36
    iget-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mMaxIntervalMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v2

    :cond_9
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 40
    iput-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-wide v0
.end method

.method public reset()V
    .registers 5

    .line 45
    iget-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    return-void
.end method
