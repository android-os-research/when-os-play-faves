.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field public static final BROADCAST_DELAY_INTENT_MSG:I = 0x12d

.field public static final BROADCAST_INTENT_MSG:I = 0xc8

.field public static final BROADCAST_TIMEOUT_FOR_DELAYED:I = 0xbb8

.field public static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field public static final MAX_ABORTED_BROADCAST_HISTORY:I

.field public static final MAX_BROADCAST_HISTORY:I

.field public static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public static final MAX_DELAYED_BROADCAST_HISTORY:I

.field public static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field public static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field public static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"


# instance fields
.field public final INTENT_DELAY_MS:I

.field public final mAbortedBroadcastHistory:[Ljava/lang/String;

.field public mAbortedHistoryNext:I

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field public mBroadcastsScheduled:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mDelayBehindServices:Z

.field public final mDelayedBroadcastHistory:[Ljava/lang/String;

.field public mDelayedHandler:Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

.field public mDelayedHistoryNext:I

.field public final mDelayedOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDelayedParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

.field public final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field public mHistoryNext:I

.field public mLogLatencyMetrics:Z

.field public mNextToken:I

.field public final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field public mPendingBroadcastRecvIndex:I

.field public mPendingBroadcastTimeoutMessage:Z

.field public final mQueueName:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSplitRefcounts:Landroid/util/SparseIntArray;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method public static synthetic $r8$lambda$8lcFmNewTNbo8jaO0g_Sg3pbWRw(Lcom/android/server/am/BroadcastQueue;[Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueue;->lambda$addBroadcastToHistoryLocked$1([Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lb5WYNKZUwGiSOY3PFxKJ2dTrOA(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueue;->lambda$addDelayedBrToDropBox$2(Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTmIhyGrYPpOVgrfVLCZZVeYw7c(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastQueue;->lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearDelayedOrderedQueueLocked(Lcom/android/server/am/BroadcastQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->clearDelayedOrderedQueueLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearDelayedParallelQueueLocked(Lcom/android/server/am/BroadcastQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->clearDelayedParallelQueueLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessNextBroadcast(Lcom/android/server/am/BroadcastQueue;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    const/16 v0, 0x32

    :goto_b
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 132
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x19

    goto :goto_18

    :cond_16
    const/16 v0, 0x12c

    :goto_18
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    .line 137
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    sput v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V
    .registers 9

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    const/16 v0, 0xbb8

    .line 176
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->INTENT_DELAY_MS:I

    .line 190
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 197
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    new-array v1, v1, [Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 198
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 204
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v2, v1, [Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 205
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 216
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .line 221
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .line 229
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 230
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 231
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 236
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 262
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHandler:Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 325
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 326
    new-instance v0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 327
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 328
    iput-boolean p5, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 332
    new-instance p3, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHandler:Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

    .line 336
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 337
    new-instance p2, Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p2, p0, p4, v0, p1}, Lcom/android/server/am/BroadcastDispatcher;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 340
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 341
    sget p1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    .line 342
    sget p1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    return-void
.end method

.method public static broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addBroadcastToHistoryLocked$1([Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 14

    .line 2622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2623
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Historical broadcasts summary ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Date;

    .line 2625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    sget p0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    add-int/lit8 p0, p0, -0x1

    :goto_48
    if-ltz p0, :cond_cc

    .line 2628
    aget-object v2, p1, p0

    if-eqz v2, :cond_c8

    .line 2630
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_c8

    :cond_55
    const-string v3, "  #"

    .line 2632
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    .line 2633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    aget-wide v3, p2, p0

    aget-wide v5, p3, p0

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " dispatch "

    .line 2636
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    aget-wide v3, p4, p0

    aget-wide v5, p2, p0

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " finish"

    .line 2639
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tenq="

    .line 2640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    aget-wide v4, p3, p0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2641
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disp="

    .line 2642
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    aget-wide v4, p2, p0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2643
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2642
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fin="

    .line 2644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    aget-wide v4, p4, p0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 2645
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2644
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c8
    :goto_c8
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_48

    .line 2648
    :cond_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p6, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$addDelayedBrToDropBox$2(Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 9

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2666
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Delayed Historical broadcasts ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    .line 2669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Delayed Historical broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2671
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 696
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 697
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 698
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method


# virtual methods
.method public final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 14

    .line 2554
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_5

    return-void

    .line 2558
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v0, 0x40

    .line 2560
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 2562
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 2563
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2561
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2566
    :cond_1f
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_2c

    .line 2567
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_2e
    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 2569
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x4a

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2570
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2575
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    .line 2577
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object p1, v0, v2

    .line 2578
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2582
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v4, v0, v2

    .line 2588
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v4, v0, v2

    .line 2589
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, p1, v2

    .line 2590
    iget p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 2593
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_BROADCAST_LOGS_TO_DROPBOX:Z

    if-eqz v2, :cond_e2

    if-nez p1, :cond_e2

    const-string p1, "dropbox"

    .line 2595
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_88

    return-void

    .line 2596
    :cond_88
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Landroid/os/DropBoxManager;

    .line 2599
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_server_br"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_e2

    .line 2600
    invoke-virtual {v10, v11}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b6

    goto :goto_e2

    .line 2603
    :cond_b6
    new-array v6, v0, [Ljava/lang/String;

    .line 2605
    new-array v8, v0, [J

    .line 2607
    new-array v7, v0, [J

    .line 2609
    new-array v9, v0, [J

    .line 2612
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    invoke-static {p1, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2614
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    invoke-static {p1, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2616
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    invoke-static {p1, v1, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2618
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    invoke-static {p1, v1, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2621
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueue;[Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2649
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    nop

    :cond_e2
    :goto_e2
    return-void
.end method

.method public addDelayedBrToDropBox(Ljava/lang/String;)V
    .registers 7

    const-string v0, "dropbox"

    .line 2657
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2658
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 2661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system_server_brd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_45

    .line 2662
    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_45

    .line 2664
    :cond_38
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2674
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_45
    :goto_45
    return-void
.end method

.method public backgroundServicesFinishedLocked(I)V
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 832
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_21

    iget p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    const-string p1, "BroadcastQueue"

    const-string v1, "Resuming delayed broadcast"

    .line 833
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 834
    iput-object p1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 835
    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 836
    invoke-virtual {p0, p1, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    :cond_21
    return-void
.end method

.method public final broadcastTimeoutLocked(Z)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2437
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 2440
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19f

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_19f

    .line 2444
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2445
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    if-eqz p1, :cond_8a

    .line 2447
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez p1, :cond_2a

    return-void

    .line 2454
    :cond_2a
    iget-boolean p1, v5, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz p1, :cond_4f

    .line 2455
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz p0, :cond_4e

    const-string p0, "BroadcastQueue"

    .line 2456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcast timeout but it\'s exempt: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2457
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2456
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void

    .line 2462
    :cond_4f
    iget-wide v3, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, p1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v3, v6

    cmp-long p1, v3, v1

    if-lez p1, :cond_8a

    .line 2468
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz p1, :cond_86

    const-string p1, "BroadcastQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Premature timeout ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] @ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": resetting BROADCAST_TIMEOUT_MSG for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_86
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    return-void

    .line 2477
    :cond_8a
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_b9

    const-string p1, "BroadcastQueue"

    .line 2482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waited long enough for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_a5

    .line 2483
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    :cond_a5
    const-string v2, "(null)"

    :goto_a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2482
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iput-object v4, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2485
    iput v0, v5, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 2486
    invoke-virtual {p0, v0, v0}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    return-void

    .line 2493
    :cond_b9
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    if-eqz p1, :cond_c5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p1

    if-eqz p1, :cond_c5

    move v0, v3

    :cond_c5
    const-string p1, "BroadcastQueue"

    .line 2495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout of broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - receiver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", started "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v1, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iput-wide v1, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    if-nez v0, :cond_100

    .line 2499
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/2addr p1, v3

    iput p1, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 2506
    :cond_100
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez p1, :cond_114

    .line 2507
    iget-object v1, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2508
    iget-object v1, v5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget v2, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    goto :goto_116

    .line 2510
    :cond_114
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    :goto_116
    const-string v1, "BroadcastQueue"

    .line 2512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver during timeout of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    if-eqz p1, :cond_161

    .line 2514
    instance-of v1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v1, :cond_161

    .line 2515
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .line 2516
    iget-object v1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v1, :cond_15f

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_15f

    .line 2518
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 2519
    :try_start_14e
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object p1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p1, p1, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 2521
    monitor-exit v1

    goto :goto_163

    :catchall_15c
    move-exception p0

    monitor-exit v1
    :try_end_15e
    .catchall {:try_start_14e .. :try_end_15e} :catchall_15c

    throw p0

    :cond_15f
    move-object p1, v4

    goto :goto_163

    .line 2524
    :cond_161
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    :goto_163
    if-eqz p1, :cond_17d

    .line 2528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17e

    :cond_17d
    move-object v1, v4

    .line 2531
    :goto_17e
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v2, v5, :cond_184

    .line 2532
    iput-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 2536
    :cond_184
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    if-nez v0, :cond_19f

    if-eqz v1, :cond_19f

    .line 2541
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_19f
    :goto_19f
    return-void
.end method

.method public final cancelBroadcastTimeoutLocked()V
    .registers 3

    .line 2429
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_e

    .line 2430
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 2431
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    :cond_e
    return-void
.end method

.method public cancelDeferrals()V
    .registers 3

    .line 2754
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2755
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->cancelDeferralsLocked()V

    .line 2756
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 2757
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_21

    .line 2682
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v4

    or-int/2addr v3, v4

    if-nez p4, :cond_1e

    if-eqz v3, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2691
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3e

    .line 2692
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr p0, v3

    if-nez p4, :cond_3c

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    return v1

    .line 2697
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_5b

    .line 2698
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr p0, v3

    if-nez p4, :cond_59

    if-eqz p0, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1

    .line 2705
    :cond_5b
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p0

    or-int/2addr p0, v3

    return p0
.end method

.method public final clearDelayedOrderedQueueLocked()V
    .registers 4

    .line 384
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 385
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delayed Ordered Broadcast added to main list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2f
    return-void
.end method

.method public final clearDelayedParallelQueueLocked()V
    .registers 4

    .line 373
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 374
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delayed Parallel Broadcast added to main list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2f
    return-void
.end method

.method public final createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    if-nez p2, :cond_9

    const-string/jumbo p2, "in queue"

    goto :goto_b

    :cond_9
    const-string p2, "dispatched"

    :goto_b
    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 p2, 0x1

    .line 2740
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_16

    move-object v0, v1

    :cond_16
    aput-object v0, p0, p2

    const/4 p2, 0x2

    .line 2741
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_21

    const-string/jumbo v0, "process unknown"

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    aput-object v0, p0, p2

    const/4 p2, 0x3

    .line 2742
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez p1, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_31
    aput-object v1, p0, p2

    const-string p1, "Broadcast %s from %s (%s) %s"

    .line 2738
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .registers 38

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 890
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const-string v2, " to "

    const-string v12, "BroadcastQueue"

    if-eqz v0, :cond_5b

    .line 891
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 892
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 893
    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 894
    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliverToRegisteredReceiverLocked ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": broadcast skipped"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    .line 905
    :goto_5c
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v4, :cond_9b

    iget v5, v15, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v4, v5}, Landroid/app/BroadcastOptions;->testRequireCompatChange(I)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compat change filtered: broadcasting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to compat change "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 908
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getRequireCompatChangeId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 911
    :cond_9b
    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v6, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v7, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    const-string v5, " through "

    const-string v6, ") to "

    const-string v7, " from "

    const-string v8, ", uid="

    const-string v9, " (pid="

    if-nez v4, :cond_f6

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Association not allowed: broadcasting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 914
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_f6
    if-nez v0, :cond_15e

    .line 920
    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v10, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v11, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move/from16 v22, v0

    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v1

    move-object/from16 v20, v3

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_160

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall blocked: broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 923
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_162

    :cond_15e
    move/from16 v22, v0

    :cond_160
    move/from16 v0, v22

    .line 930
    :goto_162
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    const-string v3, ") requires "

    const-string v4, ") requires appop "

    const/4 v5, -0x1

    if-eqz v1, :cond_223

    .line 931
    iget v6, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v11, 0x1

    invoke-static {v1, v6, v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    const-string v6, " due to registered receiver "

    if-eqz v1, :cond_1ba

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 935
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b8
    const/4 v0, 0x1

    goto :goto_223

    .line 942
    :cond_1ba
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_223

    .line 943
    iget-object v10, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 944
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v16

    iget v10, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v11, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    const-string v21, "Broadcast sent to protected receiver"

    move/from16 v17, v1

    move/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v21}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_223

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop Denial: broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 948
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 951
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b8

    :cond_223
    :goto_223
    if-nez v0, :cond_269

    .line 959
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_23d

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v1

    if-nez v1, :cond_23d

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 960
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-eqz v1, :cond_269

    .line 961
    :cond_23d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping deliver ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process gone or crashing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 968
    :cond_269
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 969
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-eqz v1, :cond_276

    const/4 v1, 0x1

    goto :goto_277

    :cond_276
    const/4 v1, 0x0

    :goto_277
    const-string v5, ") due to sender "

    const-string v6, "Instant App Denial: receiving "

    const-string v10, " (uid "

    if-nez v0, :cond_2d9

    if-nez v1, :cond_2d9

    .line 971
    iget-boolean v1, v15, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    if-eqz v1, :cond_2d9

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v11, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v11, :cond_2d9

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 974
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2d9
    const-string v1, ")"

    if-nez v0, :cond_33d

    .line 984
    iget-boolean v11, v15, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    if-nez v11, :cond_33d

    iget-boolean v11, v14, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v11, :cond_33d

    iget-object v11, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v11, v11, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v16, v0

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v11, v0, :cond_33f

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 987
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v6, v6, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") requires receiver be visible to instant apps due to sender "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto :goto_33f

    :cond_33d
    move/from16 v16, v0

    :cond_33f
    :goto_33f
    const-string v0, "Broadcast delivered to registered receiver "

    const-string v6, "Appop Denial: receiving "

    const-string v11, " due to sender "

    if-nez v16, :cond_47c

    move-object/from16 v17, v7

    .line 998
    iget-object v7, v14, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_476

    array-length v7, v7

    if-lez v7, :cond_476

    move-object/from16 v18, v5

    const/4 v7, 0x0

    .line 999
    :goto_353
    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v19, v4

    array-length v4, v5

    if-ge v7, v4, :cond_470

    .line 1000
    aget-object v4, v5, v7

    .line 1001
    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move/from16 v20, v7

    iget v7, v5, Lcom/android/server/am/ReceiverList;->pid:I

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v23, v0

    move-object/from16 v21, v6

    const/4 v0, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v7, v5, v6, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v5

    if-eqz v5, :cond_3c9

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1005
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v19

    move-object/from16 v3, v21

    :goto_3c5
    const/16 v16, 0x1

    goto/16 :goto_484

    .line 1015
    :cond_3c9
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_45e

    .line 1016
    iget v5, v14, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v5, :cond_45e

    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1017
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v24

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    move-object/from16 v30, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v23

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move/from16 v25, v0

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-virtual/range {v24 .. v29}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_460

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1022
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c5

    :cond_45e
    move-object/from16 v30, v3

    :cond_460
    move-object/from16 v5, v19

    move-object/from16 v3, v21

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v13, p0

    move-object v6, v3

    move-object v4, v5

    move-object/from16 v0, v23

    move-object/from16 v3, v30

    goto/16 :goto_353

    :cond_470
    move-object/from16 v23, v0

    move-object v3, v6

    move-object/from16 v5, v19

    goto :goto_484

    :cond_476
    move-object/from16 v23, v0

    move-object/from16 v18, v5

    move-object v3, v6

    goto :goto_483

    :cond_47c
    move-object/from16 v23, v0

    move-object/from16 v18, v5

    move-object v3, v6

    move-object/from16 v17, v7

    :goto_483
    move-object v5, v4

    :goto_484
    const/4 v13, 0x0

    if-nez v16, :cond_4eb

    .line 1035
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_48e

    array-length v0, v0

    if-nez v0, :cond_4eb

    .line 1036
    :cond_48e
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v0, Lcom/android/server/am/ReceiverList;->pid:I

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-static {v13, v4, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_4eb

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: security check failed when receiving "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1040
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    :cond_4eb
    if-nez v16, :cond_5dd

    .line 1050
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_5dd

    array-length v0, v0

    if-lez v0, :cond_5dd

    const/4 v0, 0x0

    .line 1051
    :goto_4f5
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    array-length v6, v4

    if-ge v0, v6, :cond_5dd

    .line 1052
    aget-object v4, v4, v0

    .line 1053
    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v6, Lcom/android/server/am/ReceiverList;->pid:I

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v19, v5

    const/4 v5, 0x1

    const/4 v13, -0x1

    invoke-static {v4, v7, v6, v13, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v6

    .line 1056
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v13, :cond_57e

    if-nez v6, :cond_5d6

    move-object/from16 v13, p0

    move-object/from16 v7, v23

    .line 1061
    iget-object v6, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1062
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v6

    iget-object v7, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v13, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v13}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5d6

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1067
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") excludes appop "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d3

    :cond_57e
    if-nez v6, :cond_5d6

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1083
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") excludes "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d3
    const/16 v16, 0x1

    goto :goto_5df

    :cond_5d6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v19

    const/4 v13, 0x0

    goto/16 :goto_4f5

    :cond_5dd
    move-object/from16 v19, v5

    :goto_5df
    if-nez v16, :cond_647

    .line 1098
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_647

    array-length v4, v0

    if-lez v4, :cond_647

    .line 1099
    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_647

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping delivery of excluded package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1101
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") excludes package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    :cond_647
    if-nez v16, :cond_6da

    .line 1113
    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_6da

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1114
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v24

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v4, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v5, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/am/BroadcastFilter;->featureId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v23

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move/from16 v25, v0

    move/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    invoke-virtual/range {v24 .. v29}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6da

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1119
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 1123
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    :cond_6da
    if-nez v16, :cond_748

    .line 1131
    iget-boolean v0, v15, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-nez v0, :cond_748

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v2, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v3, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_748

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exported Denial: sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1135
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1136
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") due to receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not specifying RECEIVER_EXPORTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    .line 1146
    :cond_748
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    move-object/from16 v13, p0

    if-eqz v0, :cond_7f5

    .line 1148
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1149
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_76d

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_76d

    .line 1150
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1151
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v25, v0

    move-object/from16 v24, v4

    goto :goto_771

    :cond_76d
    move/from16 v25, v0

    const/16 v24, 0x0

    .line 1153
    :goto_771
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7f5

    .line 1154
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v22

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    const/16 v30, 0x1

    iget-boolean v4, v14, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    const-string v26, "broadcast"

    move-object/from16 v23, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v31, v4

    invoke-virtual/range {v22 .. v31}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z

    move-result v0

    if-eqz v0, :cond_7f5

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is skipped in RestrictedPackage to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/FreecessController;->isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7f3

    .line 1165
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/FreecessController;->cacheBroadcastRecord(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)V

    .line 1166
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/am/FreecessController;->cacheReceiver(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7f3
    const/16 v16, 0x1

    :cond_7f5
    const/4 v0, 0x2

    if-eqz v16, :cond_7fd

    .line 1174
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v0, v1, p4

    return-void

    .line 1182
    :cond_7fd
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v2, v15, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {v13, v14, v1, v2}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_80c

    .line 1184
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v0, v1, p4

    return-void

    .line 1188
    :cond_80c
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v2, 0x1

    aput v2, v1, p4

    if-eqz p3, :cond_840

    .line 1194
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1195
    iput-object v15, v14, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1196
    iget-object v1, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v14, v1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1197
    iput v0, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1198
    iget-object v0, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_84f

    .line 1204
    iput-object v0, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1205
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessReceiverRecord;->addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 1206
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1207
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    goto :goto_84f

    .line 1210
    :cond_840
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_84f

    .line 1211
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;)V

    .line 1215
    :cond_84f
    :goto_84f
    :try_start_84f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_86f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_86f
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_883

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v0

    if-eqz v0, :cond_883

    if-eqz p3, :cond_880

    .line 1221
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    :cond_880
    move-object/from16 v32, v12

    goto :goto_8e2

    .line 1226
    :cond_883
    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v0, :cond_891

    .line 1227
    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1231
    :cond_891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1232
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v0, v14}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1233
    iget v0, v15, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v13, v0, v14, v1}, Lcom/android/server/am/BroadcastQueue;->maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V

    .line 1234
    iget v0, v15, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v13, v14, v0}, Lcom/android/server/am/BroadcastQueue;->maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 1235
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v14, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v14, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v14, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v9, v14, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v10, v14, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v11, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget v0, v14, Lcom/android/server/am/BroadcastRecord;->callingUid:I
    :try_end_8c9
    .catch Landroid/os/RemoteException; {:try_start_84f .. :try_end_8c9} :catch_8ea

    move-object/from16 v1, p0

    move-object/from16 v32, v12

    move v12, v0

    :try_start_8ce
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZIII)V

    .line 1241
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8e2

    iget-boolean v1, v14, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v1, :cond_8e2

    iget-boolean v1, v14, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_8e2

    .line 1243
    invoke-virtual {v13, v0, v14}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    :cond_8e2
    :goto_8e2
    if-eqz p3, :cond_92b

    const/4 v0, 0x3

    .line 1247
    iput v0, v14, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_8e7
    .catch Landroid/os/RemoteException; {:try_start_8ce .. :try_end_8e7} :catch_8e8

    goto :goto_92b

    :catch_8e8
    move-exception v0

    goto :goto_8ed

    :catch_8ea
    move-exception v0

    move-object/from16 v32, v12

    .line 1250
    :goto_8ed
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v32

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_920

    .line 1253
    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    if-eqz p3, :cond_920

    .line 1255
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 1257
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_920
    if-eqz p3, :cond_92b

    const/4 v1, 0x0

    .line 1262
    iput-object v1, v14, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1263
    iput-object v1, v14, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1264
    iget-object v0, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v1, v0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    :cond_92b
    :goto_92b
    return-void
.end method

.method public describeState()Ljava/lang/String;
    .registers 4

    .line 2761
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parallel; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 2763
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    .line 2762
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_2b
    move-exception p0

    .line 2764
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 2768
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2769
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2771
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1a
    if-ltz v1, :cond_2f

    .line 2773
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 2775
    :cond_2f
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2776
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_45

    const-wide v2, 0x10b00000004L

    .line 2777
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2780
    :cond_45
    iget v1, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    move v2, v1

    .line 2785
    :cond_48
    sget v3, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v12, -0x1

    invoke-virtual {v0, v2, v12, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v2

    .line 2786
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5d

    const-wide v4, 0x20b00000005L

    .line 2788
    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_5d
    if-ne v2, v1, :cond_48

    .line 2792
    iget v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v1, v13

    .line 2794
    :goto_62
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v14

    .line 2795
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v1, v1, v14

    if-nez v1, :cond_70

    move v3, v13

    goto :goto_b7

    :cond_70
    const-wide v2, 0x20b00000006L

    .line 2799
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v3, 0x10b00000001L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move/from16 p3, v13

    move-wide v12, v7

    move v7, v15

    move/from16 v8, v16

    .line 2800
    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    const-wide v1, 0x10300000002L

    .line 2802
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000003L

    .line 2804
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000004L

    .line 2806
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2808
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v3, p3

    :goto_b7
    if-ne v14, v3, :cond_bd

    .line 2810
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_bd
    move v13, v3

    move v1, v14

    const/4 v12, -0x1

    goto :goto_62
.end method

.method public final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    .line 2815
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2816
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, ":"

    const-string v6, " #"

    const-string v8, "]:"

    const-string v9, "    "

    const/4 v10, 0x1

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_2c

    goto :goto_30

    :cond_2c
    move/from16 v4, p7

    goto/16 :goto_19c

    .line 2819
    :cond_30
    :goto_30
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v10

    move v11, v4

    const/4 v12, 0x0

    move/from16 v4, p7

    :goto_3b
    if-ltz v11, :cond_97

    .line 2820
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_50

    .line 2821
    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_50

    goto :goto_94

    :cond_50
    if-nez v12, :cond_72

    if-eqz v4, :cond_57

    .line 2826
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2830
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Active broadcasts ["

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v10

    move v12, v4

    .line 2832
    :cond_72
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Active Broadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {v13, v1, v9, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    :goto_94
    add-int/lit8 v11, v11, -0x1

    goto :goto_3b

    .line 2838
    :cond_97
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    :goto_9e
    if-ltz v11, :cond_fa

    .line 2839
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_b3

    .line 2840
    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b3

    goto :goto_f7

    :cond_b3
    if-nez v12, :cond_d5

    if-eqz v4, :cond_ba

    .line 2845
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2849
    :cond_ba
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Delayed broadcasts ["

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v10

    move v12, v4

    .line 2851
    :cond_d5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Delayed Broadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {v13, v1, v9, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    :goto_f7
    add-int/lit8 v11, v11, -0x1

    goto :goto_9e

    .line 2854
    :cond_fa
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    :goto_101
    if-ltz v11, :cond_15d

    .line 2855
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_116

    .line 2856
    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_116

    goto :goto_15a

    :cond_116
    if-nez v12, :cond_138

    if-eqz v4, :cond_11d

    .line 2861
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2865
    :cond_11d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Delayed ordered Active broadcasts ["

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v10

    move v12, v4

    .line 2867
    :cond_138
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Delayed Ordered Active Broadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {v13, v1, v9, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    :goto_15a
    add-int/lit8 v11, v11, -0x1

    goto :goto_101

    .line 2873
    :cond_15d
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v1, v2, v12, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    if-eqz v2, :cond_172

    .line 2875
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v11, :cond_19c

    iget-object v11, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2876
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19c

    .line 2877
    :cond_172
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Pending broadcast ["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_196

    .line 2880
    invoke-virtual {v4, v1, v9, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_19b

    :cond_196
    const-string v4, "    (null)"

    .line 2882
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_19b
    move v4, v10

    .line 2888
    :cond_19c
    :goto_19c
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v11, v1}, Lcom/android/server/am/BroadcastConstants;->dump(Ljava/io/PrintWriter;)V

    .line 2894
    iget v11, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    const/4 v12, -0x1

    move v13, v11

    move v14, v12

    const/4 v15, 0x0

    .line 2899
    :goto_1a7
    sget v7, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-virtual {v0, v13, v12, v7}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2900
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v7, v7, v13

    const-string v12, ": "

    const-string v10, "  #"

    if-nez v7, :cond_1bd

    move-object/from16 p1, v5

    move v5, v11

    const/4 v11, 0x0

    goto/16 :goto_26e

    :cond_1bd
    add-int/lit8 v14, v14, 0x1

    move/from16 p7, v11

    if-eqz v2, :cond_1d2

    .line 2906
    iget-object v11, v7, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d2

    move-object/from16 p1, v5

    const/4 v11, 0x0

    move/from16 v5, p7

    goto/16 :goto_26e

    :cond_1d2
    if-nez v15, :cond_1f4

    if-eqz v4, :cond_1d9

    .line 2911
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2914
    :cond_1d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts ["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v15, 0x1

    :cond_1f4
    if-eqz p5, :cond_21e

    .line 2918
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "  Historical Broadcast "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {v7, v1, v9, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    move-object/from16 p1, v5

    const/4 v11, 0x0

    goto :goto_26a

    :cond_21e
    move/from16 v16, v4

    .line 2922
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2923
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2924
    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 p1, v5

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5, v5, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_256

    iget-object v5, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eq v4, v5, :cond_256

    const-string v4, "    targetComp: "

    .line 2926
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    :cond_256
    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_26a

    const-string v5, "    extras: "

    .line 2930
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26a
    :goto_26a
    move/from16 v5, p7

    move/from16 v4, v16

    :goto_26e
    if-ne v13, v5, :cond_354

    if-nez v2, :cond_347

    .line 2936
    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    if-eqz p5, :cond_279

    move v7, v5

    const/4 v14, -0x1

    goto :goto_291

    :cond_279
    move v7, v5

    move v6, v14

    :goto_27b
    if-lez v6, :cond_290

    if-eq v7, v5, :cond_290

    .line 2944
    sget v11, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v13, -0x1

    invoke-virtual {v0, v7, v13, v11}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v7

    .line 2945
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v11, v11, v7

    if-nez v11, :cond_28d

    goto :goto_27b

    :cond_28d
    add-int/lit8 v6, v6, -0x1

    goto :goto_27b

    :cond_290
    move v11, v15

    .line 2955
    :cond_291
    :goto_291
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v13, -0x1

    invoke-virtual {v0, v7, v13, v6}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v7

    .line 2960
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    aget-object v6, v6, v7

    if-nez v6, :cond_2a0

    goto/16 :goto_345

    :cond_2a0
    if-nez v11, :cond_2c2

    if-eqz v4, :cond_2a7

    .line 2973
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2976
    :cond_2a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts summary ["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v11, 0x1

    :cond_2c2
    if-nez p5, :cond_2ce

    const/16 v15, 0x32

    if-lt v14, v15, :cond_2ce

    const-string v3, "  ..."

    .line 2980
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_347

    :cond_2ce
    add-int/lit8 v14, v14, 0x1

    .line 2984
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2993
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v15, v6, v7

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v17, v6, v7

    move/from16 p1, v14

    sub-long v13, v15, v17

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " dispatch "

    .line 2995
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2996
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v13, v6, v7

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v15, v6, v7

    sub-long/2addr v13, v15

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " finish"

    .line 2998
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "    enq="

    .line 2999
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3000
    new-instance v6, Ljava/util/Date;

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v13, v13, v7

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " disp="

    .line 3001
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3002
    new-instance v6, Ljava/util/Date;

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v13, v13, v7

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " fin="

    .line 3003
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3004
    new-instance v6, Ljava/util/Date;

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v13, v13, v7

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v14, p1

    :goto_345
    if-ne v7, v5, :cond_291

    :cond_347
    :goto_347
    if-eqz p5, :cond_353

    if-eqz v2, :cond_34c

    goto :goto_353

    .line 3021
    :cond_34c
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V

    :cond_353
    :goto_353
    return v4

    :cond_354
    move v11, v5

    const/4 v10, 0x1

    const/4 v12, -0x1

    move-object/from16 v5, p1

    goto/16 :goto_1a7
.end method

.method public final enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    const-wide/16 v0, 0x40

    .line 439
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 440
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_14
    return-void
.end method

.method public enqueueDelayedOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 430
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueDelayedParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 415
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppLaunchFlag()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 416
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->clearDelayedOrderedQueueLocked()V

    .line 420
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 400
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppLaunchFlag()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 401
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->clearDelayedParallelQueueLocked()V

    .line 405
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    .line 704
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 705
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 707
    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long/2addr v5, v7

    const/4 v7, 0x0

    .line 708
    iput v7, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    const-string v8, "BroadcastQueue"

    if-nez v3, :cond_32

    .line 710
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishReceiver ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] called but state is IDLE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_32
    iget-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v9, :cond_49

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_49

    .line 713
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, v10, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    cmp-long v10, v5, v10

    if-lez v10, :cond_46

    .line 716
    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_49

    .line 719
    :cond_46
    invoke-virtual {p0, v9, v1}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 724
    :cond_49
    :goto_49
    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v10, 0x1

    if-lez v9, :cond_53

    .line 725
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    sub-int/2addr v9, v10

    aput-wide v5, v11, v9

    .line 730
    :cond_53
    iget-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v9, :cond_d1

    .line 734
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_f4

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v11, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_f4

    cmp-long v5, v5, v11

    if-lez v5, :cond_f4

    .line 737
    iget v5, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    const-string v6, " br="

    if-nez v5, :cond_a6

    .line 738
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v5, :cond_9c

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broadcast receiver "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " was slow: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_9c
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/BroadcastDispatcher;->startDeferring(I)V

    goto :goto_f4

    .line 744
    :cond_a6
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v5, :cond_f4

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Core uid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " receiver was slow but not deferring: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 752
    :cond_d1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v5, :cond_f4

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exempt from deferral policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    :goto_f4
    const/4 v5, 0x0

    .line 758
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 759
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 760
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_116

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessReceiverRecord;->hasCurReceiver(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 761
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 762
    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 764
    :cond_116
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_11e

    .line 765
    iget-object v6, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v5, v6, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 767
    :cond_11e
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 768
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 769
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 770
    iput-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move/from16 v6, p2

    .line 772
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v6, p3

    .line 773
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v6, p4

    .line 774
    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 777
    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v6, :cond_13f

    .line 778
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    sub-int/2addr v6, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    aput-wide v11, v9, v6

    :cond_13f
    if-eqz v2, :cond_156

    .line 782
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v9, 0x8000000

    and-int/2addr v6, v9

    if-nez v6, :cond_156

    .line 783
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 786
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_158

    .line 790
    :cond_156
    iput-boolean v7, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    :goto_158
    if-eqz p6, :cond_1c8

    .line 795
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1c8

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v6, v2, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v6, :cond_1c8

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 796
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-ne v2, v1, :cond_1c8

    .line 798
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_185

    .line 799
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 800
    instance-of v6, v2, Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_185

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_186

    :cond_185
    move-object v2, v5

    :goto_186
    if-eqz v4, :cond_19e

    if-eqz v2, :cond_19e

    .line 805
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v9, :cond_19e

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 807
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c8

    .line 812
    :cond_19e
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->hasBackgroundServicesLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay finish: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 814
    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    return v7

    .line 820
    :cond_1c8
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eq v3, v10, :cond_1cf

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1d0

    :cond_1cf
    move v7, v10

    :cond_1d0
    return v7
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .registers 3

    .line 670
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 671
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v0, p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTargetPackage(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 3

    .line 2288
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 2291
    :cond_6
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2292
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2293
    :cond_13
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 2294
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v0
.end method

.method public final getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    .line 2369
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2370
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public isIdle()Z
    .registers 2

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    .line 2747
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    .line 2748
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public isPendingBroadcastPackageLocked(I)Z
    .registers 2

    .line 363
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPendingBroadcastProcessLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 368
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isSignaturePerm([Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1369
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 1370
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_24

    .line 1372
    :try_start_d
    aget-object v3, p1, v1

    const-string v4, "android"

    invoke-interface {v0, v3, v4, p0}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    if-nez v3, :cond_18

    return p0

    .line 1378
    :cond_18
    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_23

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_20

    return p0

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catch_23
    return p0

    :cond_24
    return v2
.end method

.method public final logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    .registers 13

    .line 2303
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_b

    :cond_a
    move p0, v0

    .line 2304
    :goto_b
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v1, p0, :cond_10

    return-void

    .line 2307
    :cond_10
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2309
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    :goto_1f
    move v4, v2

    goto :goto_2c

    :cond_21
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 2311
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x2

    goto :goto_1f

    :cond_2b
    move v4, v0

    :goto_2c
    if-eqz v4, :cond_be

    .line 2315
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v5, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v5

    long-to-int v5, v2

    .line 2317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v6

    long-to-int v6, v2

    .line 2318
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v7, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v7

    long-to-int v7, v2

    .line 2320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v8

    long-to-int v8, v2

    .line 2324
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 2326
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 2328
    iget-object v0, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v0

    :cond_60
    move v10, v0

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dispatchLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dispatchRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receiversSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userId:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userType:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_aa

    .line 2339
    iget-object p0, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_ab

    :cond_aa
    const/4 p0, 0x0

    :goto_ab
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BroadcastQueue"

    .line 2330
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1b5

    .line 2340
    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    :cond_be
    return-void
.end method

.method public final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 11

    .line 2712
    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/16 v1, 0x7549

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ltz p0, :cond_89

    .line 2713
    iget-object v7, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p0, v7, :cond_89

    .line 2714
    iget-object v7, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 2715
    instance-of v8, v7, Lcom/android/server/am/BroadcastFilter;

    if-eqz v8, :cond_53

    .line 2716
    check-cast v7, Lcom/android/server/am/BroadcastFilter;

    const/16 v1, 0x7548

    new-array v6, v6, [Ljava/lang/Object;

    .line 2717
    iget v8, v7, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 2718
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2719
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    .line 2717
    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_cb

    .line 2721
    :cond_53
    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-array v6, v6, [Ljava/lang/Object;

    .line 2722
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2723
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    .line 2724
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v0

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v2

    .line 2722
    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_cb

    :cond_89
    if-gez p0, :cond_a1

    .line 2727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v7, "BroadcastQueue"

    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    new-array p0, v6, [Ljava/lang/Object;

    const/4 v6, -0x1

    .line 2730
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p0, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2731
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "NONE"

    aput-object p1, p0, v2

    .line 2729
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_cb
    return-void
.end method

.method public final maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    if-eqz p2, :cond_2e

    if-eqz p1, :cond_2e

    .line 2409
    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-nez v0, :cond_9

    goto :goto_2e

    .line 2412
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2415
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2417
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 13

    .line 2353
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    goto :goto_35

    .line 2356
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->getTargetPackage(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    return-void

    .line 2361
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 2362
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 2363
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2364
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v9

    .line 2361
    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    :cond_35
    :goto_35
    return-void
.end method

.method public maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V
    .registers 14

    if-eqz p3, :cond_bb

    .line 1324
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    goto/16 :goto_bb

    .line 1327
    :cond_e
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v0

    .line 1328
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v8

    .line 1329
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v6

    .line 1330
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object p3

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    move-wide v4, v2

    goto :goto_28

    :cond_27
    move-wide v4, v0

    .line 1341
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast:"

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, ":"

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1346
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 1347
    :cond_4e
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 1348
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_71

    .line 1349
    :cond_60
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 1350
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_71
    :goto_71
    const-string v1, ",reason:"

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz p3, :cond_af

    .line 1355
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast temp allowlist uid="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "BroadcastQueue"

    .line 1355
    invoke-static {v1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_af
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public final nextSplitTokenLocked()I
    .registers 3

    .line 679
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gtz v0, :cond_7

    goto :goto_8

    :cond_7
    move v1, v0

    .line 683
    :goto_8
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    return v1
.end method

.method public final noteOpForManifestReceiver(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)Z
    .registers 15

    .line 2376
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2377
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BroadcastQueue;->noteOpForManifestReceiverInner(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2380
    :cond_15
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_2f

    aget-object v9, v0, v3

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 2381
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/BroadcastQueue;->noteOpForManifestReceiverInner(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2f
    const/4 p0, 0x1

    return p0
.end method

.method public final noteOpForManifestReceiverInner(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 12

    .line 2391
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object p0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast delivered to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_76

    .line 2397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Appop Denial: receiving "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " requires appop "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to sender "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BroadcastQueue"

    .line 2397
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_76
    const/4 p0, 0x1

    return p0
.end method

.method public performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZIII)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p1

    if-eqz v1, :cond_6c

    .line 847
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 852
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 854
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v11

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 852
    invoke-interface/range {v2 .. v11}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_6f

    :catch_21
    move-exception v0

    move-object v2, p0

    .line 862
    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v3, "BroadcastQueue"

    .line 863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t deliver broadcast to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "). Crashing it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 863
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "can\'t deliver broadcast"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 865
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 867
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 868
    throw v0

    :catchall_5e
    move-exception v0

    .line 867
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 872
    :cond_64
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_6c
    invoke-interface/range {p2 .. p9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    :goto_6f
    const/16 v0, 0x1db

    const/16 v1, 0x3e8

    const/4 v2, -0x1

    move/from16 v3, p10

    move/from16 v4, p11

    if-ne v3, v2, :cond_7b

    move v3, v1

    :cond_7b
    if-ne v4, v2, :cond_7e

    move v4, v1

    .line 881
    :cond_7e
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->getShortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v5, 0x1

    move p0, v0

    move p1, v3

    move p2, v4

    move-object p3, v1

    move/from16 p4, v2

    move/from16 p5, v5

    .line 878
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;II)V

    return-void
.end method

.method public final postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 8

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 695
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-wide p1, p2, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, p0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    add-long/2addr p1, v3

    invoke-virtual {v1, v2, v0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;II)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 501
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const-string v4, "Process cur broadcast "

    const-string v5, "BroadcastQueue"

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for app "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_28
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_17b

    .line 507
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 508
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void

    .line 512
    :cond_38
    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 513
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 514
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 515
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessReceiverRecord;->addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 516
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 518
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v8, v9}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x28

    const/4 v15, 0x0

    const/4 v14, 0x0

    if-ge v7, v8, :cond_65

    .line 520
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v2, v15, v14}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 525
    :cond_65
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 526
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "updateOomAdj_startReceiver"

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 529
    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/BroadcastQueue;->maybeReportBroadcastDispatchedEventLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 530
    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v16, 0x1

    .line 534
    :try_start_84
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_14e

    if-eqz v7, :cond_ad

    :try_start_88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering to component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_88 .. :try_end_a6} :catchall_a7

    goto :goto_ad

    :catchall_a7
    move-exception v0

    move-object/from16 v19, v3

    move-object v3, v14

    goto/16 :goto_154

    .line 539
    :cond_ad
    :goto_ad
    :try_start_ad
    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 542
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 544
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 545
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v13, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_e4
    .catchall {:try_start_ad .. :try_end_e4} :catchall_14e

    :try_start_e4
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 547
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v18
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_147

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move v14, v0

    move/from16 v17, v15

    move/from16 v15, v18

    .line 544
    :try_start_f2
    invoke-interface/range {v6 .. v15}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 548
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_113

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " DELIVERED for app "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_f2 .. :try_end_113} :catchall_143

    :cond_113
    const/16 v6, 0x1db

    .line 551
    :try_start_115
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 552
    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_11e

    const/16 v0, 0x3e8

    :cond_11e
    move v8, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 553
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getShortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v10, p3

    move/from16 v11, p4

    .line 551
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;II)V
    :try_end_130
    .catchall {:try_start_115 .. :try_end_130} :catchall_13f

    .line 566
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_137

    return-void

    .line 567
    :cond_137
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app gets killed during broadcasting"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13f
    move-exception v0

    move/from16 v15, v16

    goto :goto_154

    :catchall_143
    move-exception v0

    move/from16 v15, v17

    goto :goto_154

    :catchall_147
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v17, v15

    const/4 v3, 0x0

    goto :goto_154

    :catchall_14e
    move-exception v0

    move-object/from16 v19, v3

    move-object v3, v14

    move/from16 v17, v15

    :goto_154
    if-nez v15, :cond_17a

    .line 557
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_171

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": NOT STARTED!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_171
    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 560
    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v2, v19

    .line 561
    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessReceiverRecord;->removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V

    .line 563
    :cond_17a
    throw v0

    .line 505
    :cond_17b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final processNextBroadcast(Z)V
    .registers 4

    .line 1393
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 1394
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    .line 1395
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final processNextBroadcastLocked(ZZ)V
    .registers 34

    move-object/from16 v13, p0

    .line 1407
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_3b

    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNextBroadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 1409
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parallel broadcasts; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 1410
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_3b
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const/4 v14, 0x0

    if-eqz p1, :cond_45

    .line 1415
    iput-boolean v14, v13, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 1419
    :cond_45
    :goto_45
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v11, 0x40

    const/4 v15, 0x1

    if-lez v0, :cond_126

    .line 1420
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1425
    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1427
    invoke-virtual {v13, v0, v14}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1428
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1426
    invoke-static {v11, v12, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1430
    invoke-virtual {v13, v0, v15}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1429
    invoke-static {v11, v12, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1434
    :cond_86
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1435
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_b0

    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing parallel broadcast ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    move v2, v14

    :goto_b1
    if-ge v2, v1, :cond_fd

    .line 1438
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1439
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_e5

    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering non-ordered on ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] to registered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_e5
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 1447
    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v13, v0, v3, v14, v2}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1451
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 1455
    :cond_fd
    invoke-virtual {v13, v0}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1456
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v1, :cond_45

    const-string v1, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with parallel broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 1465
    :cond_126
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_1df

    .line 1466
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_154

    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNextBroadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_154
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_186

    .line 1472
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1473
    :try_start_163
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1474
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1473
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_180

    .line 1475
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_180

    :cond_17e
    move v0, v14

    goto :goto_181

    :cond_180
    :goto_180
    move v0, v15

    .line 1476
    :goto_181
    monitor-exit v1

    goto :goto_1a8

    :catchall_183
    move-exception v0

    monitor-exit v1
    :try_end_185
    .catchall {:try_start_163 .. :try_end_185} :catchall_183

    throw v0

    .line 1478
    :cond_186
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1a7

    .line 1480
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    if-nez v0, :cond_1a5

    goto :goto_1a7

    :cond_1a5
    move v0, v14

    goto :goto_1a8

    :cond_1a7
    :goto_1a7
    move v0, v15

    :goto_1a8
    if-nez v0, :cond_1ab

    return-void

    :cond_1ab
    const-string v0, "BroadcastQueue"

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending app  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died before responding to broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iput v14, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1490
    iget v1, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1491
    iput-object v10, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    :cond_1df
    move v0, v14

    .line 1498
    :goto_1e0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1499
    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BroadcastDispatcher;->getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;

    move-result-object v9

    if-nez v9, :cond_21e

    .line 1503
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v14}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    .line 1504
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1505
    :try_start_1f8
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1506
    monitor-exit v3
    :try_end_200
    .catchall {:try_start_1f8 .. :try_end_200} :catchall_21b

    if-eqz v0, :cond_20c

    if-nez p2, :cond_20c

    .line 1511
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1516
    :cond_20c
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-boolean v0, v0, Lcom/android/server/am/UserController;->mBootCompleted:Z

    if-eqz v0, :cond_21a

    iget-boolean v0, v13, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_21a

    .line 1517
    iput-boolean v14, v13, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    :cond_21a
    return-void

    :catchall_21b
    move-exception v0

    .line 1506
    :try_start_21c
    monitor-exit v3
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw v0

    .line 1532
    :cond_21e
    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_227

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_228

    :cond_227
    move v3, v14

    .line 1533
    :goto_228
    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-wide/16 v16, 0x0

    if-eqz v4, :cond_2ab

    iget-boolean v4, v9, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v4, :cond_2ab

    iget-wide v4, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v6, v4, v16

    if-lez v6, :cond_2ab

    if-lez v3, :cond_2ab

    const-wide/16 v6, 0x2

    .line 1534
    iget-object v8, v13, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v10, v8, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    mul-long/2addr v10, v6

    int-to-long v6, v3

    mul-long/2addr v10, v6

    add-long/2addr v4, v10

    cmp-long v4, v1, v4

    if-lez v4, :cond_2ab

    const-string v4, "BroadcastQueue"

    .line 1536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hung broadcast ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] discarded after timeout failure: now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dispatchTime="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " startTime="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " numReceivers="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nextReceiver="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v13, v14}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 1547
    iput v14, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    move v1, v15

    goto :goto_2ac

    :cond_2ab
    move v1, v14

    .line 1551
    :goto_2ac
    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v2, :cond_2dd

    .line 1552
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2dc

    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNextBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") called when not idle (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2dc
    return-void

    .line 1560
    :cond_2dd
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/high16 v20, 0x40000000    # 2.0f

    const/4 v12, 0x2

    if-eqz v2, :cond_45a

    iget v4, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v4, v3, :cond_45a

    iget-boolean v5, v9, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v5, :cond_45a

    if-eqz v1, :cond_2f0

    goto/16 :goto_45a

    .line 1646
    :cond_2f0
    iget-boolean v1, v9, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    if-nez v1, :cond_454

    .line 1647
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 1648
    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferringLocked(I)Z

    move-result v2

    if-eqz v2, :cond_454

    .line 1649
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_335

    const-string v0, "BroadcastQueue"

    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next receiver in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is under deferral"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_335
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v2, v0, 0x1

    if-ne v2, v3, :cond_361

    .line 1658
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_35a

    const-string v0, "BroadcastQueue"

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sole receiver of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is under deferral; setting aside and proceeding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_35a
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v9}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_44c

    .line 1670
    :cond_361
    invoke-virtual {v9, v1, v0}, Lcom/android/server/am/BroadcastRecord;->splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 1671
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_3ce

    const-string v2, "BroadcastQueue"

    const-string v3, "Post split:"

    .line 1672
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BroadcastQueue"

    const-string v3, "Original broadcast receivers:"

    .line 1673
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 1674
    :goto_378
    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_39f

    const-string v3, "BroadcastQueue"

    .line 1675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_378

    :cond_39f
    const-string v2, "BroadcastQueue"

    const-string v3, "Split receivers:"

    .line 1677
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v14

    .line 1678
    :goto_3a7
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3ce

    const-string v3, "BroadcastQueue"

    .line 1679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a7

    .line 1683
    :cond_3ce
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_44b

    .line 1684
    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-nez v2, :cond_400

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->nextSplitTokenLocked()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1688
    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_44b

    const-string v2, "BroadcastQueue"

    .line 1690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast needs split refcount; using new token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44b

    .line 1696
    :cond_400
    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1697
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_422

    if-nez v3, :cond_422

    const-string v4, "BroadcastQueue"

    .line 1699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split refcount is zero with token for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_422
    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_44b

    const-string v4, "BroadcastQueue"

    .line 1705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New split count for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44b
    :goto_44b
    move-object v9, v0

    .line 1711
    :goto_44c
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v1, v9}, Lcom/android/server/am/BroadcastDispatcher;->addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V

    move v0, v15

    const/4 v10, 0x0

    goto :goto_455

    :cond_454
    move-object v10, v9

    :goto_455
    const/4 v14, 0x0

    const-wide/16 v18, 0x40

    goto/16 :goto_5e7

    .line 1563
    :cond_45a
    :goto_45a
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_576

    .line 1568
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-eqz v0, :cond_4dd

    .line 1569
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sub-int/2addr v0, v15

    if-nez v0, :cond_49d

    .line 1572
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_495

    const-string v0, "BroadcastQueue"

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending broadcast completion for split token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1575
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1573
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_495
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4dd

    .line 1581
    :cond_49d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_4d4

    const-string v1, "BroadcastQueue"

    .line 1582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result refcount now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for split token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1584
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - not sending completion yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1582
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_4d4
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v14

    goto :goto_4de

    :cond_4dd
    :goto_4dd
    move v0, v15

    :goto_4de
    if-eqz v0, :cond_576

    .line 1592
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4ed

    .line 1593
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, v0}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;)V

    .line 1597
    :cond_4ed
    :try_start_4ed
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_521

    const-string v0, "BroadcastQueue"

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing broadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1599
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_521
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget v10, v9, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v11, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I
    :try_end_538
    .catch Landroid/os/RemoteException; {:try_start_4ed .. :try_end_538} :catch_54c

    move-object/from16 v1, p0

    move-object v15, v9

    move v9, v0

    const/4 v14, 0x0

    move v0, v11

    const-wide/16 v18, 0x40

    move v12, v0

    :try_start_541
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZIII)V

    .line 1605
    invoke-virtual {v13, v15}, Lcom/android/server/am/BroadcastQueue;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V

    .line 1608
    iput-object v14, v15, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_549
    .catch Landroid/os/RemoteException; {:try_start_541 .. :try_end_549} :catch_54a

    goto :goto_57a

    :catch_54a
    move-exception v0

    goto :goto_551

    :catch_54c
    move-exception v0

    move-object v15, v9

    const/4 v14, 0x0

    const-wide/16 v18, 0x40

    .line 1610
    :goto_551
    iput-object v14, v15, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    const-string v1, "BroadcastQueue"

    .line 1611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] sending broadcast result of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57a

    :cond_576
    move-object v15, v9

    const/4 v14, 0x0

    const-wide/16 v18, 0x40

    .line 1618
    :goto_57a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_585

    const-string v0, "BroadcastQueue"

    const-string v1, "Cancelling BROADCAST_TIMEOUT_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1621
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_5a2

    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished with ordered broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_5a2
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerServiceExt;->updateBrMap(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1630
    invoke-virtual {v13, v15}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1631
    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5e0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e0

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1632
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v20

    if-nez v0, :cond_5e0

    .line 1634
    iget-object v1, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v15, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v5, v15, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-wide v6, v15, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, v15, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1637
    :cond_5e0
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v15}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object v10, v14

    const/4 v0, 0x1

    :goto_5e7
    if-eqz v10, :cond_11ca

    .line 1720
    iget v1, v10, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v10, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    if-nez v1, :cond_655

    .line 1726
    iput-wide v2, v10, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1730
    iget-boolean v0, v13, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_611

    const/16 v0, 0x8e

    .line 1731
    iget-wide v4, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 1736
    :cond_611
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_631

    const/4 v2, 0x0

    .line 1738
    invoke-virtual {v13, v10, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1739
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move-wide/from16 v3, v18

    .line 1737
    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v2, 0x1

    .line 1741
    invoke-virtual {v13, v10, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1740
    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1744
    :cond_631
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_655

    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing ordered broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_655
    iget-boolean v0, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_68f

    .line 1748
    iget-wide v2, v10, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v2, v4

    .line 1749
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_68c

    const-string v0, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Submitting BROADCAST_TIMEOUT_MSG ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_68c
    invoke-virtual {v13, v2, v3}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1755
    :cond_68f
    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1756
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1758
    instance-of v3, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_718

    .line 1761
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1762
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_6c9

    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering ordered ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] to registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_6c9
    iget-boolean v2, v10, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v13, v10, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1767
    iget-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v1, :cond_6e1

    iget-boolean v1, v10, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_6d7

    goto :goto_6e1

    .line 1776
    :cond_6d7
    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_717

    .line 1777
    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v0, v10}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_717

    .line 1770
    :cond_6e1
    :goto_6e1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_711

    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quick finishing ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: ordered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_711
    const/4 v1, 0x0

    .line 1773
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    :cond_717
    :goto_717
    return-void

    .line 1788
    :cond_718
    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1790
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_781

    .line 1797
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1798
    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1799
    iget-object v6, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v6

    if-eqz v6, :cond_781

    .line 1800
    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_781

    const-string v5, "BroadcastQueue"

    .line 1802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping processNextBroadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": broadcast skipped"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_782

    :cond_781
    const/4 v0, 0x0

    :goto_782
    if-eqz v2, :cond_7e7

    .line 1811
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1813
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    move-result v6

    if-lt v5, v6, :cond_79c

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1815
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    move-result v6

    if-le v5, v6, :cond_7e7

    :cond_79c
    const-string v0, "BroadcastQueue"

    .line 1816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target SDK mismatch: receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " targets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " but delivery restricted to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1816
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_7e7
    if-eqz v2, :cond_82c

    .line 1824
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1825
    invoke-virtual {v2, v5}, Landroid/app/BroadcastOptions;->testRequireCompatChange(I)Z

    move-result v5

    if-nez v5, :cond_82c

    const-string v0, "BroadcastQueue"

    .line 1826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compat change filtered: broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " due to compat change "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1828
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getRequireCompatChangeId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1826
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_82c
    if-nez v0, :cond_85f

    .line 1831
    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1832
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1831
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_85f

    const-string v0, "BroadcastQueue"

    .line 1833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Association not allowed: broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1833
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_85f
    if-nez v0, :cond_8a1

    .line 1838
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v6, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v25, v8

    move/from16 v26, v9

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz v0, :cond_8a1

    const-string v5, "BroadcastQueue"

    .line 1841
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Firewall blocked: broadcasting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1841
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_8a1
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v8, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v6, v7, v8, v9, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v5

    const/4 v6, -0x1

    if-nez v0, :cond_90f

    if-eqz v5, :cond_90f

    .line 1849
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v0, :cond_8e7

    const-string v0, "BroadcastQueue"

    .line 1850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not exported from uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90d

    :cond_8e7
    const-string v0, "BroadcastQueue"

    .line 1854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requires "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1854
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90d
    const/4 v0, 0x1

    goto :goto_977

    :cond_90f
    if-nez v0, :cond_977

    .line 1859
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_977

    .line 1860
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_977

    .line 1861
    iget-object v7, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v21

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast delivered to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v21 .. v26}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_977

    const-string v0, "BroadcastQueue"

    .line 1865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: broadcasting "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requires appop "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1867
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1865
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90d

    .line 1875
    :cond_977
    :goto_977
    :try_start_977
    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v5, v8, v9, v11, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v5
    :try_end_987
    .catch Ljava/lang/SecurityException; {:try_start_977 .. :try_end_987} :catch_988

    goto :goto_994

    :catch_988
    move-exception v0

    const-string v5, "BroadcastQueue"

    .line 1879
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1882
    :goto_994
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v8, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v8, v8, v20

    if-eqz v8, :cond_9cd

    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    .line 1883
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v7}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9cd

    const-string v0, "BroadcastQueue"

    .line 1887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: Receiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_9cd
    if-nez v0, :cond_a21

    .line 1893
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_a21

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_a21

    const-string v0, "BroadcastQueue"

    .line 1895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instant App Denial: receiving "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to sender "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") Instant Apps do not support manifest receivers"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1895
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_a21
    if-nez v0, :cond_a76

    .line 1903
    iget-boolean v7, v10, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v7, :cond_a76

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v8, v7, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-nez v8, :cond_a76

    iget v8, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v7, :cond_a76

    const-string v0, "BroadcastQueue"

    .line 1906
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instant App Denial: receiving "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " requires receiver have visibleToInstantApps set due to sender "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1906
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1914
    :cond_a76
    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_ab2

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v7

    if-eqz v7, :cond_ab2

    const-string v0, "BroadcastQueue"

    .line 1916
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping deliver ordered ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": process crashing"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1922
    :cond_ab2
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v7, :cond_b6f

    .line 1923
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v11, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v7, v8, v9, v11}, Lcom/android/server/am/MARsPolicyManager;->onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1925
    iget-object v7, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 1926
    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_ae4

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_ae4

    .line 1927
    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1928
    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v23, v7

    move/from16 v24, v8

    goto :goto_ae8

    :cond_ae4
    move/from16 v24, v7

    move-object/from16 v23, v14

    .line 1931
    :goto_ae8
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v21

    const-string v25, "broadcast"

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v8, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1932
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    const/16 v29, 0x0

    iget-boolean v9, v10, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move-object/from16 v22, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move/from16 v30, v9

    .line 1931
    invoke-virtual/range {v21 .. v30}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZZ)Z

    move-result v7

    if-eqz v7, :cond_b6f

    const-string v0, "BroadcastQueue"

    .line 1936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is skipped in RestrictedPackage to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1936
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v7, v9, v8}, Lcom/android/server/am/FreecessController;->isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b6d

    .line 1942
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v10}, Lcom/android/server/am/FreecessController;->cacheBroadcastRecord(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)V

    .line 1943
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/FreecessController;->cacheReceiver(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b6d
    const/4 v7, 0x1

    goto :goto_b70

    :cond_b6f
    move v7, v0

    :goto_b70
    if-nez v7, :cond_bd3

    .line 1952
    :try_start_b72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1954
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1952
    invoke-interface {v0, v9, v8}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_b86
    .catch Ljava/lang/Exception; {:try_start_b72 .. :try_end_b86} :catch_b87

    goto :goto_ba3

    :catch_b87
    move-exception v0

    const-string v8, "BroadcastQueue"

    .line 1957
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception getting recipient info for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_ba3
    if-nez v0, :cond_bd3

    const-string v0, "BroadcastQueue"

    .line 1961
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping delivery to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : package no longer available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_bd3
    if-nez v7, :cond_c02

    .line 1974
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1975
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1974
    invoke-virtual {v13, v10, v8, v0}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c02

    const-string v0, "BroadcastQueue"

    .line 1977
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping delivery: permission review required for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-static {v10, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastDescription(Lcom/android/server/am/BroadcastRecord;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1977
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .line 1986
    :cond_c02
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1988
    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v9, 0x3e8

    if-eq v0, v9, :cond_c23

    if-eqz v5, :cond_c23

    iget-object v5, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1989
    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_c23

    .line 1990
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1992
    :cond_c23
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1993
    iget-object v11, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v5, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    if-nez v7, :cond_cf0

    .line 1997
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v25, -0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v0

    move/from16 v22, v14

    move-object/from16 v23, v12

    move/from16 v24, v15

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v0

    if-eqz v0, :cond_cf0

    const/4 v12, 0x3

    if-ne v0, v12, :cond_c7e

    const-string v0, "BroadcastQueue"

    .line 2006
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Background execution disabled: receiving "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2006
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c7c
    const/4 v7, 0x1

    goto :goto_cf0

    .line 2010
    :cond_c7e
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v12, 0x800000

    and-int/2addr v0, v12

    if-nez v0, :cond_cbc

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2011
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_cf0

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2012
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_cf0

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2013
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v12, 0x1000000

    and-int/2addr v0, v12

    if-nez v0, :cond_cf0

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 2015
    invoke-virtual {v13, v0}, Lcom/android/server/am/BroadcastQueue;->isSignaturePerm([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cf0

    .line 2018
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/server/am/MARsPolicyManager;->isInSpecialIntentList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cf0

    .line 2019
    :cond_cbc
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 2020
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2019
    invoke-virtual {v0, v7, v12}, Lcom/android/server/am/ActivityManagerService;->addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BroadcastQueue"

    .line 2021
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Background execution not allowed: receiving "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2021
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7c

    :cond_cf0
    :goto_cf0
    if-nez v7, :cond_d43

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 2029
    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d43

    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2031
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_d43

    const-string v0, "BroadcastQueue"

    .line 2034
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping delivery to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " : user is not running"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_d43
    if-nez v7, :cond_de3

    .line 2039
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_de3

    array-length v0, v0

    if-lez v0, :cond_de3

    const/4 v0, 0x0

    .line 2040
    :goto_d4d
    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    array-length v14, v12

    if-ge v0, v14, :cond_de3

    .line 2041
    aget-object v12, v12, v0

    .line 2043
    :try_start_d54
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2047
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2044
    invoke-interface {v14, v12, v9, v15}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9
    :try_end_d68
    .catch Landroid/os/RemoteException; {:try_start_d54 .. :try_end_d68} :catch_d69

    goto :goto_d6a

    :catch_d69
    move v9, v6

    .line 2052
    :goto_d6a
    invoke-static {v12}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v6, :cond_db0

    if-nez v9, :cond_ddd

    .line 2057
    iget-object v9, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2058
    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12, v15, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ddd

    const-string v0, "BroadcastQueue"

    .line 2065
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is skipped with not OP_NONE, PERMISSION_GRANTED and MODE_ALLOWED to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2065
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ddb

    :cond_db0
    if-nez v9, :cond_ddd

    const-string v0, "BroadcastQueue"

    .line 2080
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is skipped with OP_NONE and PERMISSION_GRANTED to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2080
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ddb
    const/4 v7, 0x1

    goto :goto_de3

    :cond_ddd
    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x3e8

    goto/16 :goto_d4d

    :cond_de3
    :goto_de3
    if-nez v7, :cond_e40

    .line 2092
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_e40

    array-length v9, v0

    if-lez v9, :cond_e40

    .line 2093
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e40

    const-string v0, "BroadcastQueue"

    .line 2094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping delivery of excluded package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " excludes package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " due to sender "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2094
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_e40
    if-nez v7, :cond_ef8

    .line 2104
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v9, 0x3e8

    if-eq v0, v9, :cond_ef8

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_ef8

    array-length v0, v0

    if-lez v0, :cond_ef8

    const/4 v0, 0x0

    .line 2106
    :goto_e54
    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v12, v9

    if-ge v0, v12, :cond_ef8

    .line 2107
    aget-object v9, v9, v0

    .line 2109
    :try_start_e5b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2113
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 2110
    invoke-interface {v12, v9, v15, v14}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12
    :try_end_e6f
    .catch Landroid/os/RemoteException; {:try_start_e5b .. :try_end_e6f} :catch_e70

    goto :goto_e71

    :catch_e70
    move v12, v6

    :goto_e71
    if-eqz v12, :cond_eba

    const-string v0, "BroadcastQueue"

    .line 2118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: receiving "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " requires "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " due to sender "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2118
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_eb8
    const/4 v7, 0x1

    goto :goto_ef8

    .line 2127
    :cond_eba
    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_ef4

    .line 2128
    iget v12, v10, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v9, v12, :cond_ef4

    .line 2129
    invoke-virtual {v13, v9, v10, v3, v4}, Lcom/android/server/am/BroadcastQueue;->noteOpForManifestReceiver(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_ef4

    const-string v0, "BroadcastQueue"

    .line 2133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is skipped with not noteOpForManifestReceiver and requiredPermissions to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2133
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb8

    :cond_ef4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e54

    :cond_ef8
    :goto_ef8
    if-nez v7, :cond_f2e

    .line 2143
    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v6, :cond_f2e

    .line 2144
    invoke-virtual {v13, v0, v10, v3, v4}, Lcom/android/server/am/BroadcastQueue;->noteOpForManifestReceiver(ILcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_f2e

    const-string v0, "BroadcastQueue"

    .line 2148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is skipped with not noteOpForManifestReceiver to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2148
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_f2e
    if-eqz v7, :cond_f70

    .line 2157
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_f59

    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping delivery of ordered ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for reason described above"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_f59
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v6, 0x2

    aput v6, v0, v1

    const/4 v1, 0x0

    .line 2161
    iput-object v1, v10, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 2162
    iput-object v1, v10, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    const/4 v1, 0x0

    .line 2163
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 2164
    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 2165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    return-void

    :cond_f70
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 2168
    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    add-int/2addr v0, v7

    iput v0, v10, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 2170
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v7, v0, v1

    .line 2171
    iput v7, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 2172
    iput-object v4, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2173
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 2174
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_fb8

    iget v0, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const v4, 0x186a0

    if-le v0, v4, :cond_fb8

    const-string v0, "BroadcastQueue_MU"

    .line 2175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated broadcast record activity info for secondary user, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", callingUid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v10, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb8
    if-eqz v2, :cond_fc5

    .line 2180
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v14

    cmp-long v0, v14, v16

    if-lez v0, :cond_fc5

    const/16 v27, 0x1

    goto :goto_fc7

    :cond_fc5
    const/16 v27, 0x0

    .line 2181
    :goto_fc7
    invoke-virtual {v13, v8, v10, v2}, Lcom/android/server/am/BroadcastQueue;->maybeScheduleTempAllowlistLocked(ILcom/android/server/am/BroadcastRecord;Landroid/app/BroadcastOptions;)V

    .line 2184
    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_ff3

    iget-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_ff3

    .line 2185
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ff3

    .line 2186
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2187
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v7, 0x1f

    .line 2186
    invoke-virtual {v0, v2, v4, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2192
    :cond_ff3
    :try_start_ff3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2193
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v10, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v7, 0x0

    .line 2192
    invoke-interface {v0, v2, v7, v4}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1003
    .catch Landroid/os/RemoteException; {:try_start_ff3 .. :try_end_1003} :catch_1029
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ff3 .. :try_end_1003} :catch_1004

    goto :goto_1029

    :catch_1004
    move-exception v0

    const-string v2, "BroadcastQueue"

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed trying to unstop package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 2197
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2196
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1029
    :goto_1029
    if-eqz v11, :cond_10a7

    .line 2201
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_10a7

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_10a7

    .line 2203
    :try_start_1037
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11, v2, v14, v15, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2205
    invoke-virtual {v13, v11, v10}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_1049
    .catch Landroid/os/RemoteException; {:try_start_1037 .. :try_end_1049} :catch_108c
    .catch Ljava/lang/RuntimeException; {:try_start_1037 .. :try_end_1049} :catch_1050

    const/4 v2, 0x1

    .line 2206
    :try_start_104a
    invoke-virtual {v13, v10, v11, v6, v2}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;II)V
    :try_end_104d
    .catch Landroid/os/RemoteException; {:try_start_104a .. :try_end_104d} :catch_104e
    .catch Ljava/lang/RuntimeException; {:try_start_104a .. :try_end_104d} :catch_1050

    return-void

    :catch_104e
    move-exception v0

    goto :goto_108e

    :catch_1050
    move-exception v0

    const-string v1, "BroadcastQueue"

    .line 2214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sending broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2221
    invoke-virtual {v13, v10}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2222
    iget v3, v10, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v10, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2224
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 v1, 0x0

    .line 2226
    iput v1, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    return-void

    :catch_108c
    move-exception v0

    const/4 v2, 0x1

    :goto_108e
    const-string v4, "BroadcastQueue"

    .line 2211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when sending broadcast to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10a8

    :cond_10a7
    const/4 v2, 0x1

    :goto_10a8
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 2235
    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2236
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1109

    .line 2238
    :try_start_10b6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/32 v11, 0x10000400

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2240
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2238
    invoke-interface {v0, v6, v11, v12, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1109

    .line 2241
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v4, v6, v16

    if-lez v4, :cond_1109

    iget-wide v11, v10, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    cmp-long v4, v6, v11

    if-ltz v4, :cond_1109

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1109

    .line 2243
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2244
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1109

    const-string v0, "BroadcastQueue"

    .line 2245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update application info "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for broadcast "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1109
    .catch Landroid/os/RemoteException; {:try_start_10b6 .. :try_end_1109} :catch_1109

    .line 2255
    :catch_1109
    :cond_1109
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1135

    const-string v0, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to start app ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for broadcast "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_1135
    iget-object v0, v13, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v24, 0x1

    iget-object v6, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2260
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    or-int/lit8 v25, v6, 0x4

    new-instance v6, Lcom/android/server/am/HostingRecord;

    const-string v7, "broadcast"

    iget-object v9, v10, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    iget-object v11, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2262
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v7, v9, v11}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2263
    iget-object v7, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2264
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v9, 0x2000000

    and-int/2addr v7, v9

    if-eqz v7, :cond_1162

    move/from16 v28, v2

    goto :goto_1164

    :cond_1162
    const/16 v28, 0x0

    :goto_1164
    const/16 v29, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    move-object/from16 v26, v6

    .line 2258
    invoke-virtual/range {v21 .. v29}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_11c2

    const-string v0, "BroadcastQueue"

    .line 2268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    invoke-virtual {v13, v10}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2273
    iget v3, v10, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v10, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v10, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 v5, 0x0

    .line 2276
    iput v5, v10, Lcom/android/server/am/BroadcastRecord;->state:I

    return-void

    .line 2280
    :cond_11c2
    invoke-virtual {v13, v0, v10}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2281
    iput-object v10, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 2282
    iput v1, v13, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    return-void

    :cond_11ca
    move-object v10, v14

    move-wide/from16 v11, v18

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1e0
.end method

.method public final replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 484
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 485
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-lez v1, :cond_51

    .line 486
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 487
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 488
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_4a

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** DROPPING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "BroadcastQueue"

    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_4a
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_51
    const/4 p0, 0x0

    return-object p0
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "ORDERED"

    if-lez v0, :cond_1c

    .line 471
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedOrderedBroadcasts:Ljava/util/ArrayList;

    const-string v2, "DELAYED_ORDERED"

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 473
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0

    .line 479
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "PARALLEL"

    if-lez v0, :cond_1c

    .line 453
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedParallelBroadcasts:Ljava/util/ArrayList;

    const-string v2, "DELAYED_PARALLEL"

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 455
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0

    .line 461
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1272
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_16

    return v5

    .line 1277
    :cond_16
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v4, :cond_26

    .line 1280
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_26

    :cond_24
    move v4, v6

    goto :goto_27

    :cond_26
    :goto_26
    move v4, v5

    :goto_27
    const-string/jumbo v7, "u"

    const-string v8, "BroadcastQueue"

    if-eqz v4, :cond_ae

    .line 1285
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_ae

    .line 1286
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v10, 0x1

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v15, v5, [Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v1, v15, v6

    new-array v5, v5, [Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1292
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1291
    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    move-object v4, v15

    const/4 v1, 0x0

    move-object v15, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 1286
    invoke-virtual/range {v9 .. v21}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v1

    .line 1296
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x18800000

    .line 1297
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    .line 1300
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1303
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v1, :cond_a3

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Launching permission review for package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_a3
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/BroadcastQueue$1;

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cd

    .line 1315
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Receiving a broadcast in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    return v6
.end method

.method public final ringAdvance(III)I
    .registers 4

    add-int/2addr p1, p2

    if-gez p1, :cond_6

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_6
    if-lt p1, p3, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return p1
.end method

.method public scheduleBroadcastsLocked()V
    .registers 3

    .line 658
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule broadcasts ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_2b

    return-void

    .line 665
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    return-void
.end method

.method public scheduleDelayedBroadcastsLocked()V
    .registers 5

    .line 651
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHandler:Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 652
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDelayedHandler:Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget p0, p0, Lcom/android/server/am/BroadcastQueue;->INTENT_DELAY_MS:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 11

    .line 582
    iget-object v7, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v8, 0x0

    if-eqz v7, :cond_87

    .line 583
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_87

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    if-ne v0, v1, :cond_87

    .line 584
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "BroadcastQueue"

    if-eq v0, p1, :cond_42

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App mismatch when sending pending broadcast to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", intended target is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_42
    const/4 v0, 0x0

    .line 590
    :try_start_43
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x2

    const/4 v2, 0x3

    .line 591
    invoke-virtual {p0, v7, p1, v0, v2}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;II)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_4c

    const/4 v8, 0x1

    goto :goto_87

    :catch_4c
    move-exception p1

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in new application when starting receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 597
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    invoke-virtual {p0, v7}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 599
    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 601
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 603
    iput v8, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 604
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    :goto_87
    return v8
.end method

.method public final setBroadcastTimeoutLocked(J)V
    .registers 5

    .line 2421
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_14

    .line 2422
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2423
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const/4 p1, 0x1

    .line 2424
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    :cond_14
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 624
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_3e

    .line 631
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_3e

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_3e

    .line 632
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz p1, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] skip & discard pending app "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BroadcastQueue"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    :cond_3e
    if-eqz v0, :cond_43

    .line 638
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    :cond_43
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .registers 4

    .line 611
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_19

    .line 612
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    if-ne v1, p1, :cond_19

    const/4 p1, 0x0

    .line 613
    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 614
    iget p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 616
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    :cond_19
    return-void
.end method

.method public final skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 644
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 646
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->start()V

    .line 349
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    return-object p0
.end method

.method public updateUidReadyForBootCompletedBroadcastLocked(I)V
    .registers 2

    .line 577
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->updateUidReadyForBootCompletedBroadcastLocked(I)V

    return-void
.end method
