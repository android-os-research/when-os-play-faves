.class final Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShrinkableDebits"
.end annotation


# instance fields
.field public mDebitTally:J

.field public mStandbyBucket:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 2061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2062
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 2063
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return-void
.end method


# virtual methods
.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 2097
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getStandbyBucketLocked()I
    .registers 1

    .line 2086
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return p0
.end method

.method public getTallyLocked()J
    .registers 3

    .line 2067
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    return-wide v0
.end method

.method public setStandbyBucketLocked(I)V
    .registers 2

    .line 2082
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShrinkableDebits { debit tally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transactLocked(J)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_12

    .line 2075
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    add-long/2addr v4, p1

    goto :goto_13

    :cond_12
    move-wide v4, v0

    .line 2077
    :goto_13
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    return-wide v4
.end method
