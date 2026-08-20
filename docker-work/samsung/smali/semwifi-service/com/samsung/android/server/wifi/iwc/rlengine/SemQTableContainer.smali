.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;,
        Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;,
        Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;,
        Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;
    }
.end annotation


# static fields
.field public static final PARAM:[F

.field private static final TAG:Ljava/lang/String; = "IWCMonitor.SemQTableContainer"

.field public static final serialVersionUID:J = 0x1343b86L


# instance fields
.field private IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

.field public activityScore_AUTODISC:I

.field public activityScore_CELLULAR_OFF:I

.field public activityScore_DROP_TOO_SHORT:I

.field public activityScore_MANUAL_DISC:I

.field public activityScore_MANUAL_RECONNECTION:I

.field public activityScore_MANUAL_SWITCH:I

.field public activityScore_SNS_ONOFF:I

.field public activityScore_WIFI_OFF:I

.field public bssidPerSsidList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public candidateApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public candidateListActivityThreshold:I

.field public candidateListMemberLimit:I

.field public candidateListTimeThreshold:J

.field public coreApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public coreListMemberLimit:I

.field public mDefaultQAI:I

.field public mForcedlyQAISet:I

.field public probationApList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation
.end field

.field public probationListActivityThreshold:I

.field public probationListTimeThreshold:J

.field public qTableIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;",
            ">;"
        }
    .end annotation
.end field

.field public qTableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;",
            ">;"
        }
    .end annotation
.end field

.field public sortInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;",
            ">;"
        }
    .end annotation
.end field

.field public useProbationList:Z


# direct methods
.method public static synthetic $r8$lambda$s9M7clMAR-ecPAuKCrSZHGTars4(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;Ljava/lang/Long;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->lambda$removeConfigKey$0(Ljava/lang/Long;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 21
    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->PARAM:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->initQTableContainer(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    .line 47
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    .line 64
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qai:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    .line 65
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->forcedqai:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    .line 66
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->coreApList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    .line 72
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->candidateApList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    .line 74
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->probationApList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    .line 76
    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->bssidPerSsidList:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    .line 79
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->initQTableContainer(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-void
.end method

.method private checkOverfilled()V
    .registers 13

    .line 484
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListMemberLimit:I

    if-le v0, v1, :cond_11c

    .line 486
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "IWCMonitor.SemQTableContainer"

    if-nez v0, :cond_21

    const-string p0, "checkOverfilled - 1st element in candidateApList is null"

    .line 487
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 490
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3e

    const-string p0, "checkOverfilled - findTable returned -1 -> 1st element in candidateApList is not found in qTableIndexList"

    .line 492
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 495
    :cond_3e
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 496
    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 498
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 499
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6a
    :goto_6a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 500
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_82

    const-string v7, "checkOverfilled - bssid in candidateApList.keySet() is null -> abnormal candidate AP list management"

    .line 501
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 504
    :cond_82
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v3, :cond_ae

    .line 506
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOverfilled - findTable returned -1 -> QTable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is not found in qTableIndexList"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 509
    :cond_ae
    iget-object v9, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 510
    iget-object v9, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v0, :cond_d2

    iget-object v9, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v0, :cond_6a

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v9, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    cmp-long v9, v9, v4

    if-gez v9, :cond_6a

    .line 512
    :cond_d2
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    iget-object v1, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 514
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_6a

    .line 519
    :cond_ea
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11c

    .line 520
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CandidateAPList"

    .line 521
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeBssidTables(Ljava/lang/String;)V

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Candidate list is overfilled. Remove "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    return-void
.end method

.method public static convertBssid(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    if-nez p0, :cond_9

    const-wide/16 v0, -0x1

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, ":"

    const-string v1, ""

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private findTables(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 423
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 424
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 425
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    return-object v0
.end method

.method private initQTableContainer(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 4

    const-wide v0, 0x134fd9000L

    .line 103
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListTimeThreshold:J

    .line 104
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationListTimeThreshold:J

    const/4 v0, 0x4

    .line 105
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListActivityThreshold:I

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationListActivityThreshold:I

    const/16 v1, 0x64

    .line 107
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListMemberLimit:I

    const/16 v1, 0x14

    .line 108
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreListMemberLimit:I

    .line 110
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_WIFI_OFF:I

    .line 111
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_RECONNECTION:I

    .line 112
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_SWITCH:I

    .line 113
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_DISC:I

    .line 114
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_CELLULAR_OFF:I

    .line 115
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_SNS_ONOFF:I

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_DROP_TOO_SHORT:I

    .line 117
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_AUTODISC:I

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->useProbationList:Z

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method

.method private synthetic lambda$removeConfigKey$0(Ljava/lang/Long;)V
    .registers 4

    .line 805
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->toMacString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeQtableIfExist(Ljava/lang/String;)I

    return-void
.end method

.method private moveToCoreList(Ljava/lang/String;)V
    .registers 9

    const-string v0, "IWCMonitor.SemQTableContainer"

    if-nez p1, :cond_a

    const-string p0, "moveToCoreList - bssid is null"

    .line 582
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 586
    :cond_a
    new-instance v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;-><init>(J)V

    .line 589
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 590
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 591
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CandidateList->CoreList"

    .line 593
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 596
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 597
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 598
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ProbationList->CoreList"

    .line 600
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreListMemberLimit:I

    if-le p1, v1, :cond_106

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 607
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    if-nez p1, :cond_7d

    const-string p0, "moveToCoreList - 1st element in coreApList is null"

    .line 608
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 611
    :cond_7d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_97
    :goto_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 613
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_af

    const-string v4, "moveToCoreList - bssid in coreApList.keySet() is null -> abnormal core AP list management"

    .line 614
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 617
    :cond_af
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_97

    .line 618
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    cmp-long v5, v5, v1

    if-gez v5, :cond_97

    .line 619
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 620
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    goto :goto_97

    .line 626
    :cond_d0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->useProbationList:Z

    if-eqz v0, :cond_f9

    .line 627
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;-><init>(J)V

    .line 628
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 629
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CoreList->ProbationList"

    .line 631
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_106

    .line 633
    :cond_f9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CoreList"

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeBssidTables(Ljava/lang/String;)V

    :cond_106
    :goto_106
    return-void
.end method

.method public static toMacString(J)Ljava/lang/String;
    .registers 4

    const-wide v0, 0xffffffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_42

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_42

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 p1, 0xc

    if-ge p0, p1, :cond_29

    const/4 p0, 0x0

    const-string p1, "0"

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 97
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/4 p1, 0x2

    sub-int/2addr p0, p1

    :goto_2f
    if-lt p0, p1, :cond_39

    const-string v1, ":"

    .line 98
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x2

    goto :goto_2f

    .line 99
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mac out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addCandidateList(Ljava/lang/String;)V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    .line 474
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    .line 475
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->checkOverfilled()V

    .line 477
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;-><init>(J)V

    .line 478
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method public createTable(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V
    .registers 10

    .line 127
    iget-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    sget-object p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->PARAM:[F

    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;-><init>([FLcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    .line 129
    iget p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p2, v3, :cond_31

    .line 130
    iget-object p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v6, p2, v5

    aput v0, v6, v5

    .line 131
    aget-object v0, p2, v3

    aput v1, v0, v5

    .line 132
    aget-object p2, p2, v4

    aput v2, p2, v5

    .line 133
    invoke-virtual {p1, v5}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setState(I)V

    goto :goto_72

    :cond_31
    if-ne p2, v4, :cond_45

    .line 135
    iget-object p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v2, p2, v5

    aput v1, v2, v5

    .line 136
    aget-object v2, p2, v3

    aput v0, v2, v5

    .line 137
    aget-object p2, p2, v4

    aput v1, p2, v5

    .line 138
    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setState(I)V

    goto :goto_72

    :cond_45
    const/4 v6, 0x3

    if-ne p2, v6, :cond_5a

    .line 140
    iget-object p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v6, p2, v5

    aput v2, v6, v5

    .line 141
    aget-object v2, p2, v3

    aput v1, v2, v5

    .line 142
    aget-object p2, p2, v4

    aput v0, p2, v5

    .line 143
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setState(I)V

    goto :goto_72

    .line 145
    :cond_5a
    iget-object p2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v0, p2, v5

    aput v2, v0, v5

    .line 146
    aget-object v0, p2, v3

    aput v2, v0, v5

    .line 147
    aget-object p2, p2, v4

    aput v2, p2, v5

    .line 148
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setState(I)V

    const-string p2, "IWCMonitor.SemQTableContainer"

    const-string v0, "Wrong Default QAI"

    .line 149
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_72
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setLastState(I)V

    .line 152
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findTable(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 411
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 412
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public getAverageQAI()I
    .registers 16

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 222
    fill-array-data v1, :array_e8

    .line 228
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-nez v2, :cond_c

    return v3

    .line 232
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_1e

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    const-string v2, "IWCMonitor.SemQTableContainer"

    const-string v4, "sortInfoList null --> new"

    .line 234
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 237
    :goto_21
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_4d

    .line 238
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 239
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v8

    if-ne v8, v7, :cond_4a

    .line 241
    iget-object v7, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    new-instance v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    iget-wide v9, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastUpdateTime:J

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getState()I

    move-result v6

    invoke-direct {v8, v9, v10, v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;-><init>(JI)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 247
    :cond_4d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$1;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v2

    move v6, v4

    .line 261
    :goto_59
    iget-object v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_cb

    add-int/2addr v6, v7

    .line 263
    iget-object v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetcurState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const v9, 0x3f010625    # 0.504f

    if-nez v8, :cond_86

    aget v8, v1, v2

    float-to-double v9, v9

    sub-int v11, v5, v6

    int-to-double v11, v11

    .line 264
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v1, v2

    goto :goto_c8

    .line 265
    :cond_86
    iget-object v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetcurState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_a7

    aget v8, v1, v7

    float-to-double v9, v9

    sub-int v11, v5, v6

    int-to-double v11, v11

    .line 266
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v1, v7

    goto :goto_c8

    .line 267
    :cond_a7
    iget-object v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetcurState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v8, v10, v12

    if-nez v8, :cond_c8

    const/4 v8, 0x2

    aget v10, v1, v8

    float-to-double v11, v9

    sub-int v9, v5, v6

    int-to-double v13, v9

    .line 268
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v9, v11

    add-float/2addr v10, v9

    aput v10, v1, v8

    :cond_c8
    :goto_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_cb
    aget v2, v1, v2

    move v4, v7

    :goto_ce
    if-ge v7, v0, :cond_dd

    .line 276
    aget v6, v1, v7

    cmpg-float v8, v2, v6

    if-gez v8, :cond_da

    add-int/lit8 v2, v7, 0x1

    move v4, v2

    move v2, v6

    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_ce

    :cond_dd
    if-nez v5, :cond_e0

    goto :goto_e1

    :cond_e0
    move v3, v4

    .line 286
    :goto_e1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->sortInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    nop

    :array_e8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getTableStateCB(Ljava/lang/String;)I
    .registers 3

    .line 393
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const-string p0, "IWCMonitor.SemQTableContainer"

    const-string p1, "getTableStateCB - findTable returned -1"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 399
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getBestState()I

    move-result p1

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setLastState(I)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->setState(I)V

    return p1
.end method

.method public manageApList()V
    .registers 8

    .line 530
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->checkOverfilled()V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "IWCMonitor.SemQTableContainer"

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    const-string v1, "manageApList - bssid in candidateApList.keySet() is null -> abnormal candidate AP list management"

    .line 535
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 539
    :cond_27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListTimeThreshold:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 542
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateListActivityThreshold:I

    if-lt v2, v3, :cond_56

    .line 543
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->moveToCoreList(Ljava/lang/String;)V

    goto :goto_d

    .line 546
    :cond_56
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "CandidateList"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeBssidTables(Ljava/lang/String;)V

    goto :goto_d

    .line 555
    :cond_74
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->useProbationList:Z

    if-eqz v0, :cond_e7

    .line 556
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_82
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9a

    const-string v1, "manageApList - bssid in probationApList.keySet() is null -> abnormal Probation AP list management"

    .line 558
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 562
    :cond_9a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_82

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationListTimeThreshold:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_82

    .line 565
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationListActivityThreshold:I

    if-lt v3, v4, :cond_c9

    .line 566
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->moveToCoreList(Ljava/lang/String;)V

    goto :goto_82

    .line 569
    :cond_c9
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ProbationList"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeBssidTables(Ljava/lang/String;)V

    goto :goto_82

    :cond_e7
    return-void
.end method

.method public putBssidToConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 784
    invoke-static {p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->convertBssid(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 785
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 788
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1e

    .line 790
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 792
    :cond_1e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 793
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    :goto_26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public rebaseQTables()V
    .registers 9

    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 299
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ltz v0, :cond_22

    .line 300
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v4

    if-ne v4, v1, :cond_1f

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_22
    if-nez v3, :cond_25

    return-void

    .line 308
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    .line 312
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    if-nez v6, :cond_4e

    const-string p0, "IWCMonitor.SemQTableContainer"

    const-string v0, "rebaseQTables: qTableListIter is null"

    .line 316
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_4e
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ge v5, v7, :cond_32

    .line 321
    iget-object v5, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    .line 323
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6d

    .line 324
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 325
    :cond_6d
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7b

    .line 326
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 327
    :cond_7b
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_88

    .line 328
    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 332
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 340
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Num removed tables: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rebase QTables"

    .line 342
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordApActivity(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "IWCMonitor.SemQTableContainer"

    const-string p1, "RecordApActivity - bssid is null"

    .line 643
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 647
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 649
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$2;->$SwitchMap$com$samsung$android$server$wifi$iwc$SemRewardEvent:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_120

    goto/16 :goto_11e

    .line 682
    :pswitch_27
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_SNS_ONOFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 683
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 677
    :pswitch_35
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_AUTODISC:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 678
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 673
    :pswitch_43
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_CELLULAR_OFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 674
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 669
    :pswitch_51
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_DROP_TOO_SHORT:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 670
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 665
    :pswitch_5f
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_DISC:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 666
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 661
    :pswitch_6d
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_WIFI_OFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 662
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 657
    :pswitch_7b
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_RECONNECTION:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 658
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 653
    :pswitch_89
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_SWITCH:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 654
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11e

    .line 688
    :cond_97
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->useProbationList:Z

    if-eqz v0, :cond_11e

    .line 689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11e

    .line 690
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 691
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$2;->$SwitchMap$com$samsung$android$server$wifi$iwc$SemRewardEvent:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_13a

    goto :goto_11e

    .line 724
    :pswitch_b7
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_SNS_ONOFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 725
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 719
    :pswitch_c4
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_AUTODISC:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 720
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 715
    :pswitch_d1
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_CELLULAR_OFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 716
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 711
    :pswitch_de
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_DROP_TOO_SHORT:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 712
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 707
    :pswitch_eb
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_DISC:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 708
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 703
    :pswitch_f8
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_WIFI_OFF:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 704
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 699
    :pswitch_105
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_RECONNECTION:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 700
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    .line 695
    :pswitch_112
    iget p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->activityScore_MANUAL_SWITCH:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 696
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11e
    :goto_11e
    return-void

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_7b
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_43
        :pswitch_35
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_105
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_b7
        :pswitch_b7
    .end packed-switch
.end method

.method public removeBssidTables(Ljava/lang/String;)V
    .registers 6

    .line 434
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTables(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    .line 439
    iget-object v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 440
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 443
    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeConfigKey(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 804
    :cond_c
    new-instance v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 809
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->bssidPerSsidList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public removeNonSSQtables()V
    .registers 7

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 352
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 357
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    if-nez v5, :cond_2d

    const-string p0, "IWCMonitor.SemQTableContainer"

    const-string v0, "removeNonSSQtables: qTableListIter is null"

    .line 361
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 365
    :cond_2d
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v4

    if-nez v4, :cond_11

    .line 366
    iget-object v4, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    .line 368
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 369
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 370
    :cond_43
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 371
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 372
    :cond_51
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 373
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 385
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Num removed tables: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeNonSSQtables QTables"

    .line 387
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeQtableIfExist(Ljava/lang/String;)I
    .registers 4

    .line 773
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_1b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 775
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeBssidTables(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return v0
.end method

.method public setDefaultQAI(I)V
    .registers 5

    .line 156
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    .line 157
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultQAI forcedly, default QAI set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IWCMonitor.SemQTableContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setDefaultQAI forcedly, default QAI set to %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setDefaultQAI(int forced_qai)"

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultQAI(Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V
    .registers 9

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->getAverageQAI()I

    move-result v0

    .line 180
    iget-boolean v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    .line 181
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    :cond_c
    const-string v1, ""

    const/4 v4, 0x0

    const-string v5, "IWCMonitor.SemQTableContainer"

    const-string v6, "setDefaultQAI(RFLInterface intf)"

    if-ne v0, v2, :cond_63

    .line 187
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    if-lez v0, :cond_39

    .line 188
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    const-string p1, "Default QAI is calculated by mForcedlyQAISet"

    .line 189
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 194
    :cond_39
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    if-ne p1, v3, :cond_40

    .line 195
    iput v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    goto :goto_45

    :cond_40
    if-nez p1, :cond_45

    const/4 p1, 0x3

    .line 197
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    :cond_45
    :goto_45
    const-string p1, "Default QAI is calculated by SNS Option based"

    .line 199
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 205
    :cond_63
    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mForcedlyQAISet:I

    .line 206
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    const-string p1, "Default QAI is calculated by AverageQAI"

    .line 207
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default QAI was set "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Default QAI was set %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateApListAccessTime(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "IWCMonitor.SemQTableContainer"

    const-string p1, "updateApListAccessTime - bssid is null"

    .line 449
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 453
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 456
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 458
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 459
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 461
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 463
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 464
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    .line 466
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    :goto_5d
    return-void
.end method

.method public writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 735
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-nez p0, :cond_5

    return-void

    .line 738
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p2, "bssid: %s %s >> "

    .line 746
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v2, "Candidate List: ["

    .line 749
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    iget-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x3

    const-string v5, " <%s;%s;%s> "

    if-eqz v2, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-array v4, v4, [Ljava/lang/Object;

    .line 751
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    .line 752
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v6, v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v8, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    .line 751
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    :cond_6c
    const-string p2, "], Core List: ["

    .line 754
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    iget-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-array v6, v1, [Ljava/lang/Object;

    .line 756
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v7, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, p1

    const-string v2, " <%s;%s> "

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7b

    :cond_a7
    const-string p2, "], Probation List: ["

    .line 758
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    iget-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-array v6, v4, [Ljava/lang/Object;

    .line 760
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    .line 761
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v7, v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v9, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    .line 760
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b6

    :cond_f3
    const-string p1, "]"

    .line 763
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AP List Change"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeIWCLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeReplace()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;
    .registers 2

    .line 769
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V

    return-object v0
.end method
