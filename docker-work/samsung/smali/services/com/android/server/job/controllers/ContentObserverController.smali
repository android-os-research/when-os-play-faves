.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MAX_URIS_REPORTED:I = 0x32

.field public static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field public static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.ContentObserver"

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 63
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 73
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    .line 385
    :goto_7
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const-string v6, " from "

    const-string v7, "#"

    if-ge v4, v5, :cond_38

    .line 386
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 387
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_35

    .line 390
    :cond_22
    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 392
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 396
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 398
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_17a

    const-string v5, "Observers:"

    .line 400
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_177

    .line 403
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 404
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 405
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 406
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_61
    if-ge v10, v9, :cond_171

    .line 408
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 409
    iget-object v12, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_70
    if-ge v13, v12, :cond_87

    .line 412
    iget-object v14, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 413
    iget-object v14, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v14}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_84

    const/4 v13, 0x1

    goto :goto_88

    :cond_84
    add-int/lit8 v13, v13, 0x1

    goto :goto_70

    :cond_87
    const/4 v13, 0x0

    :goto_88
    if-nez v13, :cond_8e

    move/from16 v16, v4

    goto/16 :goto_16b

    .line 421
    :cond_8e
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 422
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, " 0x"

    .line 423
    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " ("

    .line 425
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 426
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v13, "):"

    .line 427
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v13, "Jobs:"

    .line 429
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v13, 0x0

    :goto_c8
    if-ge v13, v12, :cond_163

    .line 432
    iget-object v14, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 433
    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v15, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 435
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    invoke-static {v1, v15}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 437
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v15, :cond_158

    const-string v15, ":"

    .line 438
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 440
    iget-boolean v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v15, :cond_118

    const-string v15, "Trigger pending: update="

    .line 441
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move/from16 v16, v4

    .line 443
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    .line 442
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, ", max="

    .line 444
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 446
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v3

    .line 445
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_11a

    :cond_118
    move/from16 v16, v4

    :goto_11a
    const-string v3, "Changed Authorities:"

    .line 449
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 450
    :goto_120
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_136

    .line 451
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    .line 453
    :cond_136
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v3, :cond_154

    const-string v3, "          Changed URIs:"

    .line 454
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 455
    :goto_140
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_154

    .line 456
    iget-object v4, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_140

    .line 459
    :cond_154
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_15d

    :cond_158
    move/from16 v16, v4

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_15d
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto/16 :goto_c8

    :cond_163
    move/from16 v16, v4

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_16b
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v16

    goto/16 :goto_61

    :cond_171
    move/from16 v16, v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4c

    .line 468
    :cond_177
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_17a
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 475
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000004L

    .line 476
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const/4 v8, 0x0

    .line 478
    :goto_14
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    if-ge v8, v9, :cond_4e

    .line 479
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 480
    invoke-interface {v2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_35

    goto :goto_4b

    :cond_35
    const-wide v14, 0x20b00000001L

    .line 484
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 485
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 488
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    .line 487
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 489
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 492
    :cond_4e
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_55
    if-ge v9, v8, :cond_1d1

    const-wide v14, 0x20b00000002L

    move/from16 p3, v8

    .line 495
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 496
    iget-object v10, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    const-wide v12, 0x10500000001L

    .line 498
    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 500
    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 501
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 502
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_7d
    if-ge v12, v11, :cond_1b6

    .line 504
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 505
    iget-object v14, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_8c
    if-ge v15, v14, :cond_a5

    .line 508
    iget-object v0, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 509
    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const/4 v0, 0x1

    goto :goto_a6

    :cond_a0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_8c

    :cond_a5
    const/4 v0, 0x0

    :goto_a6
    if-nez v0, :cond_b2

    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_1a1

    :cond_b2
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    const-wide v2, 0x20b00000002L

    .line 517
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 520
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 521
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_d7

    const-wide v2, 0x10900000001L

    .line 523
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 525
    :cond_d7
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v0

    const-wide v2, 0x10500000002L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    :goto_e4
    if-ge v0, v14, :cond_19a

    const-wide v2, 0x20b00000003L

    .line 528
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 529
    iget-object v6, v13, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 531
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v20, v10

    move/from16 v21, v11

    const-wide v10, 0x10b00000001L

    invoke-virtual {v15, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 532
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 533
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    const-wide v10, 0x10500000002L

    .line 532
    invoke-virtual {v1, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 535
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v15, :cond_120

    .line 536
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_18e

    .line 539
    :cond_120
    iget-boolean v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v15, :cond_145

    const-wide v10, 0x10300000003L

    .line 540
    iget-object v15, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 541
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v13

    .line 540
    invoke-virtual {v1, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10300000004L

    .line 542
    iget-object v13, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 543
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v13

    .line 542
    invoke-virtual {v1, v10, v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_149

    :cond_145
    move-object/from16 v22, v13

    move/from16 v23, v14

    :goto_149
    const/4 v10, 0x0

    .line 545
    :goto_14a
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_165

    const-wide v13, 0x20900000005L

    .line 546
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 547
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 546
    invoke-virtual {v1, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_14a

    .line 549
    :cond_165
    iget-object v10, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v10, :cond_18b

    const/4 v10, 0x0

    .line 550
    :goto_16a
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_18b

    .line 551
    iget-object v11, v6, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    if-eqz v11, :cond_188

    const-wide v13, 0x20900000006L

    .line 554
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 553
    invoke-virtual {v1, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_188
    add-int/lit8 v10, v10, 0x1

    goto :goto_16a

    .line 559
    :cond_18b
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_18e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v13, v22

    move/from16 v14, v23

    goto/16 :goto_e4

    :cond_19a
    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 562
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1a1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-wide/from16 v5, v16

    move-wide/from16 v3, v18

    move-object/from16 v10, v20

    move/from16 v11, v21

    const-wide v14, 0x20b00000002L

    goto/16 :goto_7d

    :cond_1b6
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    .line 565
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v2, p4

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    goto/16 :goto_55

    :cond_1d1
    move-wide/from16 v18, v3

    move-wide v2, v5

    .line 568
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v18

    .line 569
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 10

    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    .line 79
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 80
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_18

    .line 81
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 83
    :cond_18
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking content-trigger job "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "JobScheduler.ContentObserver"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_32
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x4

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    const/4 p0, 0x0

    .line 91
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    const/4 v5, 0x1

    if-eqz v4, :cond_44

    move p0, v5

    .line 96
    :cond_44
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v6, :cond_96

    if-nez v4, :cond_51

    .line 99
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iput-object p0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 102
    :cond_51
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 105
    :cond_6b
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz p0, :cond_97

    .line 106
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v0, :cond_7c

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 109
    :cond_7c
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_82
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 110
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_96
    move v5, p0

    .line 114
    :cond_97
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 115
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 116
    invoke-virtual {p1, v2, v3, v5}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(JZ)Z

    :cond_9e
    if-eqz p2, :cond_a9

    .line 118
    iget-object p0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p0, :cond_a9

    .line 120
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 121
    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    :cond_a9
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5

    const/4 p3, 0x4

    .line 164
    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p3

    if-eqz p3, :cond_5b

    .line 165
    iget-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p3, :cond_41

    .line 167
    invoke-virtual {p3}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    const/4 p3, 0x0

    if-eqz p2, :cond_3a

    .line 169
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_41

    .line 176
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_29

    .line 177
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 179
    :cond_29
    iget-object p0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 181
    iget-object v0, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 183
    iput-object p3, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 184
    iput-object p3, p2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_41

    .line 192
    :cond_3a
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 193
    iput-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 196
    :cond_41
    :goto_41
    sget-boolean p0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz p0, :cond_5b

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No longer tracking job "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.ContentObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 127
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 128
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p0, :cond_17

    .line 129
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 130
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 133
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    :cond_17
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 204
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 205
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 209
    iget-object p0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 210
    iget-object p0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    :cond_14
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 140
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 141
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz p0, :cond_2d

    .line 142
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 143
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_18

    .line 145
    :cond_13
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 146
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 148
    :goto_18
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v0, :cond_23

    .line 149
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    goto :goto_28

    .line 152
    :cond_23
    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 153
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :goto_28
    const/4 p0, 0x0

    .line 155
    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 156
    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    :cond_2d
    return-void
.end method
