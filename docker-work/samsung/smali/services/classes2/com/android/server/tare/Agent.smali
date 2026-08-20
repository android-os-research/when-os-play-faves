.class public Lcom/android/server/tare/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Agent$AgentHandler;,
        Lcom/android/server/tare/Agent$ActionAffordabilityNote;,
        Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;,
        Lcom/android/server/tare/Agent$Package;,
        Lcom/android/server/tare/Agent$OngoingEventUpdater;,
        Lcom/android/server/tare/Agent$OngoingEvent;,
        Lcom/android/server/tare/Agent$TrendCalculator;,
        Lcom/android/server/tare/Agent$TotalDeltaCalculator;
    }
.end annotation


# static fields
.field public static final ALARM_TAG_AFFORDABILITY_CHECK:Ljava/lang/String; = "*tare.affordability_check*"

.field public static final DEBUG:Z

.field public static final MSG_CHECK_ALL_AFFORDABILITY:I = 0x0

.field public static final MSG_CHECK_INDIVIDUAL_AFFORDABILITY:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActionAffordabilityNotes:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$ActionAffordabilityNote;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public final mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCurrentOngoingEvents:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Agent$OngoingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public final mLock:Ljava/lang/Object;

.field public final mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

.field public final mScribe:Lcom/android/server/tare/Scribe;

.field public final mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/Agent;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .registers 11

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    .line 69
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_27

    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sput-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 94
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 144
    new-instance v0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    .line 865
    new-instance v0, Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-direct {v0}, Lcom/android/server/tare/Agent$TrendCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    .line 984
    new-instance v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 117
    iput-object p2, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 118
    iput-object p3, p0, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 119
    new-instance p2, Lcom/android/server/tare/Agent$AgentHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/tare/Agent$AgentHandler;-><init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    .line 120
    const-class p2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 121
    new-instance p2, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    .line 122
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;-><init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue-IA;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    return-void
.end method


# virtual methods
.method public distributeBasicIncomeLocked(I)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 626
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v7

    .line 628
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    const/4 v0, 0x0

    move v5, v0

    .line 629
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6a

    .line 630
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 631
    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_66

    .line 634
    :cond_21
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 635
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 636
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 637
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v8

    move/from16 v4, p1

    int-to-double v10, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    .line 640
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_66

    .line 642
    new-instance v21, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v13, 0x0

    const/4 v14, 0x0

    long-to-double v8, v8

    mul-double/2addr v10, v8

    double-to-long v11, v10

    const-wide/16 v17, 0x0

    move-object/from16 v8, v21

    move-wide/from16 v9, v19

    move-wide v15, v11

    move-wide/from16 v11, v19

    invoke-direct/range {v8 .. v18}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v21

    move v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_67

    :cond_66
    :goto_66
    move v9, v5

    :goto_67
    add-int/lit8 v5, v9, 0x1

    goto :goto_e

    :cond_6a
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1228
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1229
    iget-object v2, v0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Ongoing events:"

    .line 1232
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1236
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_24
    if-ltz v4, :cond_e3

    .line 1237
    iget-object v8, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 1238
    iget-object v9, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v9

    sub-int/2addr v9, v5

    :goto_33
    if-ltz v9, :cond_de

    .line 1239
    iget-object v10, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1240
    iget-object v11, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 1241
    invoke-virtual {v11, v8, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArrayMap;

    .line 1245
    invoke-virtual {v11}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v12

    sub-int/2addr v12, v5

    const/4 v13, 0x0

    :goto_4b
    if-ltz v12, :cond_d4

    .line 1246
    invoke-virtual {v11, v12}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    .line 1247
    invoke-virtual {v11, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v14

    sub-int/2addr v14, v5

    :goto_56
    if-ltz v14, :cond_cf

    if-nez v13, :cond_65

    .line 1250
    invoke-static {v8, v10}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v13, v5

    .line 1255
    :cond_65
    invoke-virtual {v11, v12, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 1257
    iget v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-static {v15}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    if-eqz v15, :cond_87

    const-string v15, "("

    .line 1259
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ")"

    .line 1261
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_87
    const-string v15, " runtime="

    .line 1263
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget-wide v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v5, v2, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v5, " delta/sec="

    .line 1265
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_bd

    const-string v5, " ctp/sec="

    .line 1269
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_bd
    const-string v5, " refCount="

    .line 1272
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    goto :goto_56

    :cond_cf
    add-int/lit8 v12, v12, -0x1

    const/4 v5, 0x1

    goto/16 :goto_4b

    :cond_d4
    if-eqz v13, :cond_d9

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_d9
    add-int/lit8 v9, v9, -0x1

    const/4 v5, 0x1

    goto/16 :goto_33

    :cond_de
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_24

    :cond_e3
    if-nez v7, :cond_ea

    const-string v0, "N/A"

    .line 1284
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    :cond_ea
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 430
    iget-wide v0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    .line 431
    div-long/2addr p3, v0

    .line 432
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    mul-long/2addr v0, p3

    .line 433
    iget-object p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-nez p0, :cond_1a

    .line 434
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 435
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide p1

    mul-long/2addr p3, p1

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0

    .line 437
    :cond_1a
    iget p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-virtual {p2, p0, p5, p6}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide p2

    .line 438
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    iget-object p1, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    iget-wide p4, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr p4, p2

    .line 440
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    .line 439
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0
.end method

.method public getBalanceLocked(ILjava/lang/String;)J
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v7

    .line 152
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArrayMap;

    if-eqz p1, :cond_2d

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 156
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 157
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->reset(Lcom/android/server/tare/Ledger;JJ)V

    .line 158
    iget-object p2, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual {p1, p2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-static {p0}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->-$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J

    move-result-wide p0

    add-long/2addr v7, p0

    :cond_2d
    return-wide v7
.end method

.method public grantBirthrightLocked(ILjava/lang/String;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 687
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 688
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_32

    .line 689
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits as soon as it was installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 694
    :cond_32
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 696
    new-instance v15, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 698
    invoke-virtual {v4, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-object v4, v15

    move-wide v5, v7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 696
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public grantBirthrightsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 652
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 653
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 654
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 655
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 656
    invoke-virtual {p0, v3}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public grantBirthrightsLocked(I)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 662
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 663
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/4 v0, 0x0

    move v5, v0

    .line 665
    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_73

    .line 666
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 667
    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_24

    :goto_22
    move v10, v5

    goto :goto_70

    .line 670
    :cond_24
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 671
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_52

    .line 674
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits before economy was set up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 678
    :cond_52
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 680
    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide/from16 v10, v20

    move-wide/from16 v12, v20

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v10, v5

    move v5, v9

    .line 678
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :goto_70
    add-int/lit8 v5, v10, 0x1

    goto :goto_10

    :cond_73
    return-void
.end method

.method public final isAffordableLocked(JJJ)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    cmp-long p1, p1, p3

    if-ltz p1, :cond_10

    .line 166
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide p0

    cmp-long p0, p0, p5

    if-ltz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    .line 172
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 177
    :cond_11
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v12

    .line 178
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 179
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 181
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v2

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_67

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_44

    .line 205
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 185
    :cond_44
    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v1

    .line 187
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v9, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v14, v9

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v9, v4

    move-wide v10, v12

    move-wide/from16 v16, v14

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-wide/from16 v18, v1

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_97

    .line 194
    :cond_67
    invoke-virtual {v1, v0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 196
    invoke-virtual {v3, v0, v12, v13}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide v4

    const-wide/16 v9, 0x0

    .line 197
    iget-wide v14, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr v14, v4

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    .line 198
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 197
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 199
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide v10, v12

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 207
    :cond_97
    :goto_97
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 213
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public final noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 226
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-nez v0, :cond_1d

    .line 228
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 231
    :cond_1d
    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 233
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v2

    .line 234
    invoke-static {p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_66

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_4c

    .line 261
    sget-object p3, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unsupported event type: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 238
    :cond_4c
    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v6

    if-nez v1, :cond_5f

    .line 241
    new-instance v7, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v1, v7

    move v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V

    invoke-virtual {v0, p3, p4, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_81

    .line 244
    :cond_5f
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    goto :goto_81

    .line 249
    :cond_66
    invoke-virtual {v2, p3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v7

    if-eqz v7, :cond_81

    if-nez v1, :cond_7b

    .line 252
    new-instance v1, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v2, v1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_81

    .line 255
    :cond_7b
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    :cond_81
    :goto_81
    if-eqz p7, :cond_86

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_86
    return-void
.end method

.method public final onAnythingChangedLocked(Z)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 317
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 319
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v12

    .line 321
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    :goto_19
    if-ltz v13, :cond_68

    .line 322
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    .line 324
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v15, v0

    :goto_2a
    if-ltz v15, :cond_63

    .line 326
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 328
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 329
    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/SparseArrayMap;

    if-eqz v6, :cond_5c

    if-eqz p1, :cond_55

    .line 332
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move v1, v14

    move-object v2, v5

    move-wide v3, v8

    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v6

    move-wide v5, v10

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 333
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v9, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_58

    :cond_55
    move-wide/from16 v16, v8

    move-object v8, v5

    .line 335
    :goto_58
    invoke-virtual {v7, v14, v8}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_5e

    :cond_5c
    move-wide/from16 v16, v8

    :goto_5e
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v8, v16

    goto :goto_2a

    :cond_63
    move-wide/from16 v16, v8

    add-int/lit8 v13, v13, -0x1

    goto :goto_19

    .line 339
    :cond_68
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_71
    if-ltz v8, :cond_dc

    .line 340
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v9

    .line 342
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_82
    if-ltz v10, :cond_d9

    .line 344
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 346
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 347
    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/ArraySet;

    if-eqz v13, :cond_d6

    .line 350
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 351
    invoke-virtual {v7, v9, v11}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v15

    const/4 v0, 0x0

    move v5, v0

    :goto_a2
    if-ge v5, v14, :cond_d6

    .line 353
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 354
    invoke-virtual {v6, v12, v9, v11}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 357
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide v1, v15

    move/from16 v19, v5

    move-object/from16 p1, v6

    move-wide/from16 v5, v17

    .line 356
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_d3

    move-object/from16 v1, p1

    .line 359
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 360
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v9, v11, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_d3
    add-int/lit8 v5, v19, 0x1

    goto :goto_a2

    :cond_d6
    add-int/lit8 v10, v10, -0x1

    goto :goto_82

    :cond_d9
    add-int/lit8 v8, v8, -0x1

    goto :goto_71

    :cond_dc
    return-void
.end method

.method public onAppExemptedLocked(ILjava/lang/String;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 703
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 704
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    sub-long v14, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_19

    return-void

    .line 709
    :cond_19
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 710
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 712
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v7, v4

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public onAppStatesChangedLocked(ILandroid/util/ArraySet;)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 281
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v9

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 283
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v13

    const/4 v15, 0x0

    .line 285
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_9b

    move-object/from16 v5, p2

    .line 286
    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 287
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 288
    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/SparseArrayMap;

    if-eqz v3, :cond_93

    .line 290
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move/from16 v1, p1

    move-object v2, v6

    move-object v14, v3

    move-wide v3, v9

    move-wide/from16 v16, v9

    move-object v9, v6

    move-wide v5, v11

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 291
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v14, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 292
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 293
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_8f

    .line 295
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 296
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 297
    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v18

    const/4 v5, 0x0

    :goto_5a
    if-ge v5, v14, :cond_8f

    .line 299
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 300
    invoke-virtual {v6, v13, v8, v9}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 303
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-wide/from16 v5, v20

    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 304
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_8c

    move-object/from16 v1, v23

    .line 305
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 306
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_8c
    add-int/lit8 v5, v22, 0x1

    goto :goto_5a

    .line 310
    :cond_8f
    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_95

    :cond_93
    move-wide/from16 v16, v9

    :goto_95
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, v16

    goto/16 :goto_13

    :cond_9b
    return-void
.end method

.method public onAppUnexemptedLocked(ILjava/lang/String;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 570
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 571
    iget-object v5, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_15

    return-void

    .line 577
    :cond_15
    iget-object v7, v0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 578
    invoke-interface {v7, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v9, v7, v9

    if-gez v9, :cond_25

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    goto :goto_3b

    :cond_25
    const-wide/32 v9, 0xa4cb800

    cmp-long v9, v7, v9

    if-gez v9, :cond_2f

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    goto :goto_3b

    :cond_2f
    const-wide/32 v9, 0xf731400

    cmp-long v7, v7, v9

    if-gez v7, :cond_39

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto :goto_3b

    :cond_39
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_3b
    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_8e

    .line 595
    sget-boolean v5, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v5, :cond_6b

    .line 596
    sget-object v5, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reclaiming bonus wealth! Taking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_6b
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 601
    iget-object v5, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v5

    .line 602
    new-instance v6, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x4

    const/4 v13, 0x0

    neg-long v14, v3

    const-wide/16 v16, 0x0

    move-object v7, v6

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :cond_8e
    return-void
.end method

.method public onCreditSupplyChanged()V
    .registers 2

    .line 621
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceStateChangedLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    return-void
.end method

.method public onPackageRemovedLocked(ILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    .line 719
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public onPricingChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public onUserRemovedLocked(ILjava/util/List;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/util/List;)V

    .line 739
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public final reclaimAssetsLocked(ILjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 730
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 732
    :cond_1a
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->discardLedgerLocked(ILjava/lang/String;)V

    .line 733
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reclaimAssetsLocked(ILjava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 744
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 745
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public reclaimUnusedAssetsLocked(DJZ)V
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 519
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v7

    .line 520
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getLedgersLocked()Landroid/util/SparseArrayMap;

    move-result-object v8

    .line 521
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move/from16 v5, v22

    .line 522
    :goto_16
    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    if-ge v5, v0, :cond_c0

    .line 523
    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move/from16 v3, v22

    .line 524
    :goto_22
    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    if-ge v3, v0, :cond_bb

    .line 525
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/tare/Ledger;

    .line 526
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-gtz v2, :cond_3c

    goto/16 :goto_b2

    .line 530
    :cond_3c
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 534
    invoke-interface {v11, v2, v4}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v11

    cmp-long v11, v11, p3

    if-ltz v11, :cond_b2

    if-nez p5, :cond_53

    .line 539
    invoke-virtual {v7, v4, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v11

    goto :goto_59

    .line 541
    :cond_53
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v11, v4, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    :goto_59
    long-to-double v13, v0

    mul-double v13, v13, p1

    double-to-long v13, v13

    sub-long v15, v0, v13

    cmp-long v15, v15, v11

    if-gez v15, :cond_65

    sub-long v13, v0, v11

    :cond_65
    cmp-long v0, v13, v9

    if-lez v0, :cond_b2

    .line 548
    sget-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v0, :cond_8f

    .line 549
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reclaiming unused wealth! Taking "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {v4, v2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_8f
    new-instance v24, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v0, 0x2

    const/4 v15, 0x0

    neg-long v12, v13

    const-wide/16 v18, 0x0

    move-object/from16 v9, v24

    move-wide/from16 v10, v20

    move-wide/from16 v16, v12

    move-wide/from16 v12, v20

    move v14, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v10, v3

    move-object/from16 v3, v23

    move v11, v4

    move-object/from16 v4, v24

    move v12, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_b5

    :cond_b2
    :goto_b2
    move v10, v3

    move v11, v4

    move v12, v5

    :goto_b5
    add-int/lit8 v3, v10, 0x1

    move v4, v11

    move v5, v12

    goto/16 :goto_22

    :cond_bb
    move v12, v5

    add-int/lit8 v5, v12, 0x1

    goto/16 :goto_16

    :cond_c0
    return-void
.end method

.method public recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    .line 448
    sget-boolean v1, Lcom/android/server/tare/Agent;->DEBUG:Z

    const-wide/16 v10, 0x0

    if-nez v1, :cond_15

    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_15

    return-void

    .line 452
    :cond_15
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 453
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to adjust system balance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_38
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 458
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    .line 459
    iget-wide v4, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v6, v4, v10

    if-lez v6, :cond_ca

    add-long/2addr v4, v2

    .line 460
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_ca

    .line 464
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    .line 465
    sget-object v1, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would result in becoming too rich. Decreasing transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    .line 466
    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v3, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-nez v3, :cond_76

    const-string v3, ""

    goto :goto_89

    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    sub-long v3, v3, v19

    .line 469
    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v13, v0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iget-wide v2, v0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget v4, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-object v5, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    iget-wide v10, v0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    move-object v12, v1

    move-wide v15, v2

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v21, v10

    invoke-direct/range {v12 .. v22}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object/from16 v0, p3

    move-object v10, v1

    goto :goto_cd

    :cond_ca
    move-object v10, v0

    move-object/from16 v0, p3

    .line 474
    :goto_cd
    invoke-virtual {v0, v10}, Lcom/android/server/tare/Ledger;->recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 475
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    iget-wide v2, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 476
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v10}, Lcom/android/server/tare/Analyst;->noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 477
    iget-wide v1, v10, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x0

    if-eqz v1, :cond_12b

    if-eqz p5, :cond_12b

    .line 478
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 479
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_12b

    .line 481
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v13

    move v15, v11

    .line 482
    :goto_f8
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_12b

    .line 483
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 486
    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v13

    move-object/from16 p3, v5

    move-wide/from16 v5, v16

    .line 485
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_128

    move-object/from16 v1, p3

    .line 488
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 489
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_128
    add-int/lit8 v15, v15, 0x1

    goto :goto_f8

    .line 494
    :cond_12b
    iget-wide v0, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13d

    .line 495
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->maybePerformQuantitativeEasingLocked()V

    :cond_13d
    return-void
.end method

.method public registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1049
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 1051
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    :cond_14
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1055
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1057
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 1058
    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_32

    const/4 p0, 0x1

    .line 1062
    invoke-static {v2, p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    return-void

    .line 1065
    :cond_32
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v4

    .line 1068
    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v6

    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v8

    move-object v3, p0

    .line 1067
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p3

    .line 1066
    invoke-static {v2, p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1069
    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3, p1, p2, v2}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_51
    return-void
.end method

.method public final scheduleBalanceCheckLocked(ILjava/lang/String;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 871
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-nez v0, :cond_15

    .line 874
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    .line 877
    :cond_15
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 878
    invoke-virtual {v4}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 879
    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 877
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/Agent$TrendCalculator;->reset(JJLandroid/util/ArraySet;)V

    .line 880
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossLowerThresholdMs()J

    move-result-wide v0

    .line 882
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v2}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossUpperThresholdMs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_52

    cmp-long v0, v2, v4

    if-nez v0, :cond_5c

    .line 887
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    :cond_52
    cmp-long v4, v2, v4

    if-nez v4, :cond_57

    goto :goto_5b

    .line 893
    :cond_57
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_5b
    move-wide v2, v0

    .line 895
    :cond_5c
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v2

    .line 895
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void
.end method

.method public final shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 610
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1e

    .line 612
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasCode()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1e

    .line 615
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 617
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 371
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public final stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v13, p4

    .line 384
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 389
    :cond_13
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    .line 391
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 392
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/SparseArrayMap;

    if-nez v14, :cond_3f

    .line 396
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ongoing transactions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_3f
    invoke-virtual {v14, v15, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    if-nez v1, :cond_8d

    .line 403
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonexistent ongoing transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_60

    const-string v2, ""

    goto :goto_71

    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_8d
    iget v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    if-gtz v0, :cond_d0

    .line 410
    iget-wide v2, v1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v2, p5, v2

    sub-long v11, p7, v2

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 413
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v0

    .line 414
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v1, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget-wide v5, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v10, v4

    move-object v3, v13

    move-object v0, v14

    move-wide/from16 v13, p7

    move v7, v15

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    invoke-direct/range {v10 .. v20}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, v21

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 419
    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    if-eqz p9, :cond_d5

    .line 422
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_d5
    return-void
.end method

.method public tearDownLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 902
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    return-void
.end method

.method public unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1080
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_1e

    .line 1082
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1083
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1085
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 1087
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_1e
    return-void
.end method
