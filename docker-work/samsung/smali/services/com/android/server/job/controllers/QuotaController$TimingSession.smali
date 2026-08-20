.class final Lcom/android/server/job/controllers/QuotaController$TimingSession;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Lcom/android/server/job/controllers/QuotaController$TimedEvent;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimingSession"
.end annotation


# instance fields
.field public final bgJobCount:I

.field public final endTimeElapsed:J

.field public final mHashCode:I

.field public final startTimeElapsed:J


# direct methods
.method public constructor <init>(JJI)V
    .registers 6

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1968
    iput-wide p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 1969
    iput p5, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 1972
    invoke-static {p1, p2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    move-result p1

    const/4 p2, 0x0

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    .line 1973
    invoke-static {p3, p4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p5

    .line 1975
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 2008
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, " -> "

    .line 2009
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, " ("

    .line 2011
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v0, "), "

    .line 2013
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " bg jobs."

    .line 2015
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 2020
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2022
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2024
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2026
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2029
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1991
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1992
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1993
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    if-ne p0, p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public getEndTimeElapsed()J
    .registers 3

    .line 1980
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 1

    .line 2003
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
