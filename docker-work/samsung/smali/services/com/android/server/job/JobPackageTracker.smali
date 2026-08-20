.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field public static final BATCHING_TIME:J = 0x1b7740L

.field public static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_CMD_MASK:I = 0xff

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_START_PERIODIC_JOB:I = 0x3

.field public static final EVENT_STOP_JOB:I = 0x2

.field public static final EVENT_STOP_PERIODIC_JOB:I = 0x4

.field public static final EVENT_STOP_REASON_MASK:I = 0xff00

.field public static final EVENT_STOP_REASON_SHIFT:I = 0x8

.field public static final NUM_HISTORY:I = 0x5


# instance fields
.field public mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field public final mEventCmds:[I

.field public final mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

.field public final mEventJobIds:[I

.field public final mEventReasons:[Ljava/lang/String;

.field public final mEventTags:[Ljava/lang/String;

.field public final mEventTimes:[J

.field public final mEventUids:[I

.field public mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/util/jobs/RingBufferIndices;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    new-array v0, v1, [I

    .line 55
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    new-array v0, v1, [J

    .line 56
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    new-array v0, v1, [I

    .line 57
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    new-array v0, v1, [Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 59
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    new-array v0, v1, [Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 74
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;IILjava/lang/String;)V
    .registers 10

    .line 64
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/RingBufferIndices;->add()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    shl-int/lit8 p5, p5, 0x8

    const v2, 0xff00

    and-int/2addr p5, v2

    or-int/2addr p1, p5

    aput p1, v1, v0

    .line 66
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    sget-object p5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p5}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 67
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, p1, v0

    .line 68
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p3, p1, v0

    .line 69
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p4, p1, v0

    .line 70
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aput-object p6, p0, v0

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;I)V
    .registers 18

    move-object v0, p0

    .line 537
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 538
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 540
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_22

    .line 541
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 542
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    move-object v1, v3

    goto :goto_29

    .line 544
    :cond_22
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 546
    :goto_29
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 v2, 0x1

    move v14, v2

    .line 547
    :goto_30
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v3, v2

    if-ge v14, v3, :cond_4a

    .line 548
    aget-object v2, v2, v14

    if-eqz v2, :cond_47

    const-string v4, "Historical stats"

    move-object/from16 v3, p1

    move-wide v5, v10

    move-wide v7, v12

    move/from16 v9, p2

    .line 549
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;JJI)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_47
    add-int/lit8 v14, v14, 0x1

    goto :goto_30

    :cond_4a
    const-string v4, "Current stats"

    move-object v2, v1

    move-object/from16 v3, p1

    move-wide v5, v10

    move-wide v7, v12

    move/from16 v9, p2

    .line 553
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;JJI)V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 23

    move-object/from16 v0, p0

    .line 557
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 558
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 559
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 562
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_27

    .line 563
    new-instance v5, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v5, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 564
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v3, v3, v4

    invoke-virtual {v3, v5, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    move-object v3, v5

    goto :goto_2e

    .line 566
    :cond_27
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 568
    :goto_2e
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v4, v3, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 v4, 0x1

    move v12, v4

    .line 570
    :goto_35
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v5, v4

    if-ge v12, v5, :cond_54

    .line 571
    aget-object v4, v4, v12

    if-eqz v4, :cond_4f

    const-wide v6, 0x20b00000001L

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v17, v12

    move/from16 v12, p4

    .line 572
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    goto :goto_51

    :cond_4f
    move/from16 v17, v12

    :goto_51
    add-int/lit8 v12, v17, 0x1

    goto :goto_35

    :cond_54
    const-wide v6, 0x10b00000002L

    move-object v4, v3

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v12, p4

    .line 576
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    move-object/from16 v0, p1

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 635
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v3

    if-nez v3, :cond_f

    return-void

    .line 639
    :cond_f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 641
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v3, :cond_9f

    .line 643
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v9, v8}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v9

    .line 644
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v10, v10, v9

    const/4 v11, -0x1

    if-eq v2, v11, :cond_30

    .line 645
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_30

    goto :goto_38

    .line 648
    :cond_30
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    if-nez v11, :cond_3b

    :goto_38
    move/from16 v16, v3

    goto :goto_97

    :cond_3b
    const-wide v12, 0x20b00000001L

    .line 652
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v14, 0x10e00000001L

    .line 654
    invoke-virtual {v1, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 655
    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v14, v14, v9

    sub-long v14, v6, v14

    move/from16 v16, v3

    const-wide v2, 0x10300000002L

    invoke-virtual {v1, v2, v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000003L

    .line 656
    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    .line 657
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v10, v10, v9

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000005L

    .line 658
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v10, v10, v9

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v2, 0x2

    if-eq v11, v2, :cond_82

    const/4 v2, 0x4

    if-ne v11, v2, :cond_94

    :cond_82
    const-wide v2, 0x10e00000006L

    .line 660
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v9, v10, v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v1, v2, v3, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 664
    :cond_94
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_97
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p4

    move/from16 v3, v16

    goto/16 :goto_1a

    .line 667
    :cond_9f
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpHistory(Landroid/util/IndentingPrintWriter;I)Z
    .registers 16

    .line 583
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 587
    :cond_a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Job history:"

    .line 588
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 590
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    :goto_1b
    const/4 v4, 0x1

    if-ge v1, v0, :cond_af

    .line 592
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v5, v1}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v5

    .line 593
    iget-object v6, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v6, v6, v5

    const/4 v7, -0x1

    if-eq p2, v7, :cond_33

    .line 594
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq p2, v7, :cond_33

    goto/16 :goto_ab

    .line 597
    :cond_33
    iget-object v7, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_3d

    goto/16 :goto_ab

    :cond_3d
    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v7, v4, :cond_54

    if-eq v7, v9, :cond_51

    const/4 v4, 0x3

    if-eq v7, v4, :cond_4e

    if-eq v7, v8, :cond_4b

    const-string v4, "     ??"

    goto :goto_56

    :cond_4b
    const-string v4, " STOP-P"

    goto :goto_56

    :cond_4e
    const-string v4, "START-P"

    goto :goto_56

    :cond_51
    const-string v4, "   STOP"

    goto :goto_56

    :cond_54
    const-string v4, "  START"

    .line 609
    :goto_56
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v10, v10, v5

    sub-long/2addr v10, v2

    const/16 v12, 0x13

    invoke-static {v10, v11, p1, v12}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string v10, " "

    .line 610
    invoke-virtual {p1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": #"

    .line 612
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 613
    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, "/"

    .line 614
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 616
    invoke-virtual {p1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eq v7, v9, :cond_8a

    if-ne v7, v8, :cond_a8

    .line 619
    :cond_8a
    invoke-virtual {p1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v4, v4, v5

    if-eqz v4, :cond_97

    .line 622
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a8

    .line 624
    :cond_97
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v4, v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 629
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    :cond_af
    return v4
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .registers 14

    .line 516
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 517
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 518
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v0, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-nez v1, :cond_21

    if-nez p1, :cond_21

    const/4 p0, 0x0

    return p0

    .line 523
    :cond_21
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_35

    .line 526
    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v0

    add-long/2addr v8, v0

    add-long/2addr v6, v8

    .line 528
    :cond_35
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    if-eqz p1, :cond_50

    .line 530
    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 531
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object p0, p0, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_50
    long-to-float p0, v6

    long-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 10

    .line 481
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 482
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 484
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v3, 0x28

    if-lt v2, v3, :cond_1f

    .line 485
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    goto :goto_2c

    .line 487
    :cond_1f
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    .line 489
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x3

    goto :goto_39

    :cond_38
    const/4 v0, 0x1

    :goto_39
    move v2, v0

    .line 490
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 489
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public noteConcurrency(II)V
    .registers 4

    .line 507
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p1, v0, :cond_8

    .line 508
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 510
    :cond_8
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, p1, :cond_e

    .line 511
    iput p2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_e
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V
    .registers 13

    .line 494
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 495
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1c

    .line 496
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;JI)V

    goto :goto_2b

    .line 499
    :cond_1c
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;JI)V

    .line 501
    :goto_2b
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 502
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x4

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x2

    :goto_3b
    move v2, v0

    .line 503
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 502
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 475
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 476
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 468
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 469
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 470
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 471
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    return-void
.end method

.method public rebatchIfNeeded(J)V
    .registers 7

    .line 456
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-lez v2, :cond_28

    .line 458
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 459
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 460
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 461
    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 462
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length p2, p1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aput-object v2, p0, v1

    :cond_28
    return-void
.end method
