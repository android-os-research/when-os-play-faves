.class public final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataSet"
.end annotation


# instance fields
.field public final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public mMaxFgActive:I

.field public mMaxTotalActive:I

.field public final mStartClockTime:J

.field public final mStartElapsedTime:J

.field public final mStartUptimeTime:J

.field public mSummedTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 135
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 136
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 137
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 129
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 130
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 131
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method


# virtual methods
.method public addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 257
    iget-wide v4, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 258
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_17
    if-ltz v4, :cond_c1

    .line 259
    iget-object v6, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 260
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_26
    if-ltz v7, :cond_bd

    .line 261
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 262
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v9

    .line 263
    iget-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v12, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 264
    iget v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v12, v13

    iput v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 265
    iget-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v14, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 266
    iget v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v15, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v14, v15

    iput v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 267
    iget-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    move-object/from16 v16, v6

    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v14, v5

    iput-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 268
    iget v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v5, v6

    iput v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 269
    iget v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v5, :cond_79

    .line 270
    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v5, v2, v5

    add-long/2addr v10, v5

    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    const/4 v5, 0x1

    .line 271
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    goto :goto_7a

    :cond_79
    const/4 v5, 0x1

    .line 273
    :goto_7a
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v6, :cond_87

    .line 274
    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v10, v2, v10

    add-long/2addr v12, v10

    iput-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 275
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    .line 277
    :cond_87
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v6, :cond_94

    .line 278
    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v10, v2, v10

    add-long/2addr v14, v10

    iput-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 279
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    .line 281
    :cond_94
    iget-object v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_9b
    if-ltz v6, :cond_b7

    .line 282
    iget-object v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 283
    iget-object v11, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    iget-object v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 284
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 283
    invoke-virtual {v11, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_9b

    :cond_b7
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v6, v16

    goto/16 :goto_26

    :cond_bd
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_17

    .line 288
    :cond_c1
    iget v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v3, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v2, v3, :cond_c9

    .line 289
    iput v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 291
    :cond_c9
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v0, v2, :cond_d1

    .line 292
    iput v0, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_d1
    return-void
.end method

.method public decActive(ILjava/lang/String;JI)V
    .registers 10

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 197
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 198
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long/2addr p3, v2

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    :cond_11
    sub-int/2addr p1, p2

    .line 200
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 201
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 202
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/2addr p1, p2

    invoke-virtual {p0, p5, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public decActiveTop(ILjava/lang/String;JI)V
    .registers 10

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 216
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 217
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long/2addr p3, v2

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    :cond_11
    sub-int/2addr p1, p2

    .line 219
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 220
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 221
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/2addr p1, p2

    invoke-virtual {p0, p5, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public decPending(ILjava/lang/String;J)V
    .registers 9

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 180
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 181
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long/2addr p3, v2

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    :cond_11
    sub-int/2addr p1, p2

    .line 183
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;JJI)V
    .registers 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    move/from16 v12, p7

    .line 320
    invoke-virtual {v8, v10, v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v13

    .line 321
    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " at "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-wide v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " ("

    .line 323
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-wide v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ") over "

    .line 325
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-static {v13, v14, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v15, ":"

    .line 327
    invoke-virtual {v9, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Max concurrency: "

    .line 329
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " total, "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " foreground"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 334
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_66
    if-ge v6, v7, :cond_187

    .line 336
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v0, -0x1

    if-eq v12, v0, :cond_79

    .line 337
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v12, v0, :cond_79

    goto/16 :goto_179

    .line 340
    :cond_79
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArrayMap;

    .line 341
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v3, v16

    :goto_88
    if-ge v3, v2, :cond_179

    .line 343
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 344
    invoke-static {v9, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " / "

    .line 345
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v9, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    invoke-virtual {v1, v10, v11}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v17

    iget v0, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v19, "pending"

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object v8, v1

    move-object/from16 v1, p1

    move/from16 v21, v2

    move/from16 v22, v3

    move-wide v2, v13

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-wide/from16 v4, v17

    move/from16 v17, v6

    move/from16 v6, v20

    move/from16 v18, v7

    move-object/from16 v7, v19

    .line 349
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Landroid/util/IndentingPrintWriter;JJILjava/lang/String;)Z

    move-result v0

    const-string v7, " "

    if-eqz v0, :cond_d6

    .line 351
    invoke-virtual {v9, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    :cond_d6
    invoke-virtual {v8, v10, v11}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string v19, "active"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    move-object v12, v7

    move-object/from16 v7, v19

    .line 353
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Landroid/util/IndentingPrintWriter;JJILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 355
    invoke-virtual {v9, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    :cond_ef
    invoke-virtual {v8, v10, v11}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string v7, "active-top"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    .line 357
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Landroid/util/IndentingPrintWriter;JJILjava/lang/String;)Z

    .line 359
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v0, :cond_107

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v0, :cond_10c

    :cond_107
    const-string v0, " (pending)"

    .line 360
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    :cond_10c
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v0, :cond_114

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v0, :cond_119

    :cond_114
    const-string v0, " (active)"

    .line 363
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    :cond_119
    iget v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v0, :cond_121

    iget-boolean v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v0, :cond_126

    :cond_121
    const-string v0, " (active-top)"

    .line 366
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 368
    :cond_126
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 369
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_164

    move/from16 v0, v16

    .line 370
    :goto_133
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_161

    if-lez v0, :cond_142

    const-string v1, ", "

    .line 372
    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 374
    :cond_142
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v1, "x "

    .line 375
    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-object v1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 377
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_133

    .line 379
    :cond_161
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 381
    :cond_164
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v8, p0

    move/from16 v12, p7

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v2, v21

    move/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_88

    :cond_179
    :goto_179
    move/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v8, p0

    move/from16 v12, p7

    move/from16 v7, v18

    goto/16 :goto_66

    .line 384
    :cond_187
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .registers 34

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    move/from16 v11, p8

    .line 396
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 397
    invoke-virtual {v7, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    .line 399
    iget-wide v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-wide v4, 0x10300000001L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 400
    iget-wide v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000002L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    .line 401
    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 403
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v6, 0x0

    :goto_35
    if-ge v6, v14, :cond_14d

    .line 405
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v0, -0x1

    if-eq v11, v0, :cond_48

    .line 406
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v11, v0, :cond_48

    goto/16 :goto_147

    .line 409
    :cond_48
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArrayMap;

    .line 410
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_56
    if-ge v3, v2, :cond_147

    const-wide v0, 0x20b00000004L

    .line 412
    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 413
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-wide/from16 p6, v0

    const-wide v0, 0x10500000001L

    .line 415
    invoke-virtual {v8, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    .line 416
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p3, v2

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v16, 0x10b00000003L

    .line 419
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v18

    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    move-wide/from16 v20, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v22, p3

    move/from16 v24, v2

    move/from16 v23, v3

    move-wide/from16 v2, v16

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v4, v18

    move/from16 v18, v6

    move/from16 v6, v24

    .line 418
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v2, 0x10b00000004L

    .line 421
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 420
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v2, 0x10b00000005L

    .line 423
    invoke-virtual {v15, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 422
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v0, 0x10800000006L

    .line 425
    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v3, 0x1

    if-gtz v2, :cond_d8

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v2, :cond_d6

    goto :goto_d8

    :cond_d6
    const/4 v2, 0x0

    goto :goto_d9

    :cond_d8
    :goto_d8
    move v2, v3

    :goto_d9
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    .line 427
    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v2, :cond_ec

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v2, :cond_ea

    goto :goto_ec

    :cond_ea
    const/4 v2, 0x0

    goto :goto_ed

    :cond_ec
    :goto_ec
    move v2, v3

    :goto_ed
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    .line 429
    iget v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v2, :cond_ff

    iget-boolean v2, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v2, :cond_fe

    goto :goto_ff

    :cond_fe
    const/4 v3, 0x0

    :cond_ff
    :goto_ff
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    .line 432
    :goto_103
    iget-object v1, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_136

    const-wide v1, 0x20b00000009L

    .line 434
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10e00000001L

    .line 436
    iget-object v5, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 437
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 436
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 438
    iget-object v5, v15, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 439
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 438
    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 441
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    :cond_136
    move-wide/from16 v0, v20

    .line 444
    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v23, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v2, v22

    goto/16 :goto_56

    :cond_147
    :goto_147
    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_35

    :cond_14d
    const-wide v0, 0x10500000005L

    .line 448
    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    .line 449
    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 451
    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 14

    .line 225
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_82

    .line 226
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 227
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_7f

    .line 228
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 229
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v4, :cond_2c

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v4, :cond_2c

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v4, :cond_7c

    .line 231
    :cond_2c
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v4

    .line 232
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 233
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 234
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 235
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 236
    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 237
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 239
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v5, 0x0

    if-lez v4, :cond_5e

    .line 240
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 241
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 243
    :cond_5e
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v4, :cond_6d

    .line 244
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 245
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 247
    :cond_6d
    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v4, :cond_7c

    .line 248
    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 249
    iput v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    :cond_7c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_82
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 3

    .line 155
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_c
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object p0
.end method

.method public final getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 144
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    if-nez p0, :cond_24

    .line 148
    new-instance p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {p0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    .line 149
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object p0
.end method

.method public getTotalTime(J)J
    .registers 7

    .line 163
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    return-wide v0

    .line 166
    :cond_9
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public incActive(ILjava/lang/String;J)V
    .registers 5

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 188
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez p1, :cond_10

    .line 189
    iput-wide p3, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 190
    iget p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    :cond_10
    add-int/lit8 p1, p1, 0x1

    .line 192
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    return-void
.end method

.method public incActiveTop(ILjava/lang/String;J)V
    .registers 5

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 207
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez p1, :cond_10

    .line 208
    iput-wide p3, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 209
    iget p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    :cond_10
    add-int/lit8 p1, p1, 0x1

    .line 211
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    return-void
.end method

.method public incPending(ILjava/lang/String;J)V
    .registers 5

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p0

    .line 171
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez p1, :cond_10

    .line 172
    iput-wide p3, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 173
    iget p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    :cond_10
    add-int/lit8 p1, p1, 0x1

    .line 175
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method public printDuration(Landroid/util/IndentingPrintWriter;JJILjava/lang/String;)Z
    .registers 8

    long-to-float p0, p4

    long-to-float p2, p2

    div-float/2addr p0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p0, p2

    float-to-int p0, p0

    const/4 p2, 0x1

    const-string/jumbo p3, "x "

    if-lez p0, :cond_22

    .line 302
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, "% "

    .line 303
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, p6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 305
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, p7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return p2

    :cond_22
    if-lez p6, :cond_2e

    .line 309
    invoke-virtual {p1, p6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 310
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, p7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return p2

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public final printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V
    .registers 9

    .line 389
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    .line 390
    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10500000002L

    .line 391
    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 392
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
