.class public Lcom/android/server/pm/SnapshotStatistics$Stats;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SnapshotStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stats"
.end annotation


# instance fields
.field public mBigBuilds:I

.field public mMaxBuildTimeUs:I

.field public mShortLived:I

.field public mStartTimeUs:J

.field public mStopTimeUs:J

.field public mTimes:[I

.field public mTotalBuilds:I

.field public mTotalCorked:I

.field public mTotalTimeUs:J

.field public mTotalUsed:I

.field public mUsed:[I

.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public static bridge synthetic -$$Nest$mcomplete(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;->complete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcorked(Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics$Stats;->corked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->rebuild(IIIIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;J)V
    .registers 7

    .line 307
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    .line 235
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 240
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 245
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    .line 251
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 256
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 263
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 268
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 308
    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 309
    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 310
    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .registers 5

    .line 317
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 217
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 240
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 245
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    .line 251
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 256
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 263
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 268
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 318
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 319
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    .line 320
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 321
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 322
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 323
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 324
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    .line 325
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 326
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 327
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 328
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$Stats-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    return-void
.end method


# virtual methods
.method public final complete(J)V
    .registers 3

    .line 336
    iput-wide p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    return-void
.end method

.method public final corked()V
    .registers 2

    .line 304
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "stats"

    .line 448
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 449
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_26

    :cond_d
    const-string/jumbo v0, "times"

    .line 450
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 451
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_26

    :cond_1a
    const-string/jumbo v0, "usage"

    .line 452
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 453
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    :goto_26
    return-void

    .line 455
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unrecognized choice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .registers 12

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p5, :cond_24

    .line 367
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p6, p3, p2

    const-string p2, "%-23s"

    invoke-virtual {p1, p0, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_58

    .line 369
    :cond_24
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p6, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    sub-long v1, p3, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p6, p2

    const-string v1, "%11s"

    invoke-virtual {p1, p5, v1, p6}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 370
    iget-wide v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long p6, v1, v3

    const-string v3, " %11s"

    if-eqz p6, :cond_4e

    new-array p6, v0, [Ljava/lang/Object;

    sub-long/2addr p3, v1

    .line 371
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p6, p2

    invoke-virtual {p1, p5, v3, p6}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_58

    :cond_4e
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p3, "now"

    aput-object p3, p0, p2

    .line 373
    invoke-virtual {p1, p5, v3, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_58
    return-void
.end method

.method public final dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 13

    const-string v6, "Summary stats"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 389
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 p2, 0x6

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-eqz p5, :cond_3a

    .line 391
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p5, v4, [Ljava/lang/Object;

    const-string v4, "TotBlds"

    aput-object v4, p5, v3

    const-string v3, "TotUsed"

    aput-object v3, p5, v2

    const-string v2, "TotCork"

    aput-object v2, p5, v1

    const-string v1, "BigBlds"

    aput-object v1, p5, v0

    const-string v0, "ShortLvd"

    aput-object v0, p5, p4

    const-string p4, "TotTime"

    aput-object p4, p5, p3

    const-string p3, "MaxTime"

    aput-object p3, p5, p2

    const-string p2, "  %10s  %10s  %10s  %10s  %10s  %10s  %10s"

    invoke-virtual {p1, p0, p2, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_80

    .line 395
    :cond_3a
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    iget v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p4

    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v4, p3

    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, p2

    const-string p0, "  %10d  %10d  %10d  %10d  %10d  %10d  %10d"

    .line 395
    invoke-virtual {p1, p5, p0, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 400
    :goto_80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 13

    const-string v6, "Build times"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 407
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p5, :cond_56

    .line 409
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {p0}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object p0

    move p4, p2

    .line 410
    :goto_19
    array-length p5, p0

    const-string v0, "  %10s"

    if-ge p4, p5, :cond_3a

    .line 411
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    new-array v2, p3, [Ljava/lang/Object;

    aget v3, p0, p4

    .line 412
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    const-string v3, "<= %dms"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 411
    invoke-virtual {p1, p5, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_19

    .line 414
    :cond_3a
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p5, p3, [Ljava/lang/Object;

    new-array v1, p3, [Ljava/lang/Object;

    array-length v2, p0

    sub-int/2addr v2, p3

    aget p0, p0, v2

    .line 415
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "> %dms"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, p2

    .line 414
    invoke-virtual {p1, p4, v0, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_70

    :cond_56
    move p4, p2

    .line 417
    :goto_57
    iget-object p5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v0, p5

    if-ge p4, v0, :cond_70

    .line 418
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    aget p5, p5, p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, p2

    const-string p5, "  %10d"

    invoke-virtual {p1, v0, p5, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_57

    .line 421
    :cond_70
    :goto_70
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 13

    const-string v6, "Use counters"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 428
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p5, :cond_56

    .line 430
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {p0}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object p0

    move p4, p2

    .line 431
    :goto_19
    array-length p5, p0

    const-string v0, "  %10s"

    if-ge p4, p5, :cond_3a

    .line 432
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    new-array v2, p3, [Ljava/lang/Object;

    aget v3, p0, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    const-string v3, "<= %d"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, p5, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_19

    .line 434
    :cond_3a
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p5, p3, [Ljava/lang/Object;

    new-array v1, p3, [Ljava/lang/Object;

    array-length v2, p0

    sub-int/2addr v2, p3

    aget p0, p0, v2

    .line 435
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "> %d"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, p2

    .line 434
    invoke-virtual {p1, p4, v0, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_70

    :cond_56
    move p4, p2

    .line 437
    :goto_57
    iget-object p5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v0, p5

    if-ge p4, v0, :cond_70

    .line 438
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    aget p5, p5, p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, p2

    const-string p5, "  %10d"

    invoke-virtual {p1, v0, p5, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_57

    .line 441
    :cond_70
    :goto_70
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final durationToString(J)Ljava/lang/String;
    .registers 9

    const-wide/32 v0, 0xf4240

    .line 344
    div-long/2addr p1, v0

    long-to-int p0, p1

    .line 345
    div-int/lit8 p1, p0, 0x3c

    .line 346
    rem-int/lit8 p0, p0, 0x3c

    .line 347
    div-int/lit8 p2, p1, 0x3c

    .line 348
    rem-int/lit8 p1, p1, 0x3c

    .line 349
    div-int/lit8 v0, p2, 0x18

    .line 350
    rem-int/lit8 p2, p2, 0x18

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_39

    new-array v5, v5, [Ljava/lang/Object;

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "%2d:%02d:%02d:%02d"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const-string v0, ""

    if-eqz p2, :cond_5a

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    const-string p0, "%2s %02d:%02d:%02d"

    invoke-static {p0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v4

    aput-object v0, p2, v3

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%2s %2s %2d:%02d"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rebuild(IIIIZZ)V
    .registers 9

    .line 278
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p3

    if-ltz p2, :cond_1d

    .line 282
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 283
    iget-object p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    aget p3, p2, p4

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p4

    .line 286
    :cond_1d
    iget-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    if-eqz p5, :cond_2b

    .line 290
    iget p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    :cond_2b
    if-eqz p6, :cond_33

    .line 293
    iget p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 295
    :cond_33
    iget p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    if-ge p2, p1, :cond_39

    .line 296
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    :cond_39
    return-void
.end method

.method public final report()V
    .registers 10

    .line 464
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iget v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 v4, v4, 0x3e8

    iget-wide v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/EventLogTags;->writePmSnapshotStats(IIIIIJ)V

    return-void
.end method
