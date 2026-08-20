.class public abstract Lcom/android/server/vibrator/Step;
.super Ljava/lang/Object;
.source "Step.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/vibrator/Step;",
        ">;"
    }
.end annotation


# instance fields
.field public final conductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 38
    iput-wide p2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public calculateWaitTime()J
    .registers 7

    .line 91
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    const-wide/16 v2, 0x0

    if-nez p0, :cond_e

    return-wide v2

    .line 96
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract cancel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelImmediately()V
.end method

.method public compareTo(Lcom/android/server/vibrator/Step;)I
    .registers 4

    .line 101
    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-wide p0, p1, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/android/server/vibrator/Step;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/Step;->compareTo(Lcom/android/server/vibrator/Step;)I

    move-result p0

    return p0
.end method

.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    return-object p0
.end method

.method public getVibratorOnDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCleanUp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract play()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end method
