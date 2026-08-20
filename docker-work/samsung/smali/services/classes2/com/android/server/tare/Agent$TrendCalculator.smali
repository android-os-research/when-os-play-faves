.class Lcom/android/server/tare/Agent$TrendCalculator;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrendCalculator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/tare/Agent$OngoingEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final WILL_NOT_CROSS_THRESHOLD:J = -0x1L


# instance fields
.field public mCtpThreshold:J

.field public mCurBalance:J

.field public mLowerThreshold:J

.field public mMaxDeltaPerSecToCtpThreshold:J

.field public mMaxDeltaPerSecToLowerThreshold:J

.field public mMaxDeltaPerSecToUpperThreshold:J

.field public mRemainingConsumableCredits:J

.field public mUpperThreshold:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .registers 13

    .line 852
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    .line 853
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_18

    cmp-long v4, v0, v5

    if-gez v4, :cond_18

    .line 854
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    goto :goto_27

    .line 855
    :cond_18
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_27

    cmp-long v2, v0, v5

    if-lez v2, :cond_27

    .line 856
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 858
    :cond_27
    :goto_27
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v2

    .line 859
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    iget-wide v9, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    cmp-long p1, v7, v9

    if-ltz p1, :cond_3c

    cmp-long p1, v0, v5

    if-gez p1, :cond_3c

    .line 860
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    :cond_3c
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 749
    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$TrendCalculator;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method public getTimeToCrossLowerThresholdMs()J
    .registers 9

    .line 813
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_11
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v2

    if-eqz v6, :cond_20

    .line 821
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    .line 823
    :cond_20
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 824
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    sub-long/2addr v2, v6

    div-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_30
    const-wide/16 v0, 0x3e8

    mul-long/2addr v4, v0

    return-wide v4
.end method

.method public getTimeToCrossUpperThresholdMs()J
    .registers 7

    .line 841
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 845
    :cond_b
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public reset(JJLandroid/util/ArraySet;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$ActionAffordabilityNote;",
            ">;)V"
        }
    .end annotation

    .line 779
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    .line 780
    iput-wide p3, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    const-wide/16 p1, 0x0

    .line 781
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 782
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    const-wide/high16 p3, -0x8000000000000000L

    .line 783
    iput-wide p3, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    const-wide v0, 0x7fffffffffffffffL

    .line 784
    iput-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    .line 785
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    if-eqz p5, :cond_62

    const/4 p1, 0x0

    .line 787
    :goto_1c
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge p1, p2, :cond_62

    .line 788
    invoke-virtual {p5, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 789
    invoke-static {p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v2

    .line 790
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_40

    .line 791
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_39

    goto :goto_3d

    .line 792
    :cond_39
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_3d
    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    goto :goto_4d

    .line 794
    :cond_40
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v6, v4, p3

    if-nez v6, :cond_47

    goto :goto_4b

    .line 795
    :cond_47
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_4b
    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    .line 797
    :goto_4d
    invoke-static {p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v2

    .line 798
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    cmp-long p2, v2, v4

    if-gtz p2, :cond_5f

    .line 799
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    :cond_5f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_62
    return-void
.end method
