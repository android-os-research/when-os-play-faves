.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;
.super Ljava/lang/Object;
.source "SemRFLearningTop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IWCMonitor.RFLearningTop"


# instance fields
.field private IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

.field private currentAP:Ljava/lang/String;

.field private currentState:I

.field public intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

.field private lastAction:I

.field private mLock:Lcom/samsung/android/server/wifi/SemIWCMonitor;

.field private qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

.field public rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;-><init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    .line 23
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    .line 24
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;-><init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->mLock:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->lastAction:I

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    return-void
.end method


# virtual methods
.method public algorithmStep()V
    .registers 11

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Q-Table Action Taken"

    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v2, :cond_13

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string v0, "algorithmStep - QTable Container is null"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_13
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->manageApList()V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->printApLists()V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->mLock:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v2

    .line 66
    :try_start_1c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 69
    monitor-exit v2

    return-void

    .line 73
    :cond_26
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    .line 74
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->createTable(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V

    .line 76
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_d1

    const-string v2, "Q-Table: ["

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    .line 79
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_57

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string v0, "algorithmStep - FindTable returned -1"

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_57
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move v4, v3

    .line 88
    :goto_62
    iget v5, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_94

    move v5, v3

    .line 89
    :goto_68
    iget v7, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numActions:I

    if-ge v5, v7, :cond_86

    const-string v7, " %f"

    new-array v8, v6, [Ljava/lang/Object;

    .line 90
    iget-object v9, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v9, v9, v4

    aget v9, v9, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_86
    const-string v5, ";"

    new-array v6, v3, [Ljava/lang/Object;

    .line 92
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_94
    const-string v2, " ] >> "

    new-array v4, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->getTableStateCB(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    const-string v2, "Action Taken: %d, New State: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 100
    iget v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->lastAction:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz p0, :cond_d0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    return-void

    :catchall_d1
    move-exception p0

    .line 76
    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p0
.end method

.method public getCurrentAP()Ljava/lang/String;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentState()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    return p0
.end method

.method public getCurrentTableStates()[[F
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-eqz v1, :cond_1c

    .line 234
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 237
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    return-object p0

    :cond_1c
    const/4 p0, 0x3

    new-array v0, p0, [[F

    const/4 v1, 0x0

    new-array v2, p0, [F

    .line 241
    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, p0, [F

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_4c

    aput-object p0, v0, v1

    return-object v0

    :array_38
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_42
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_4c
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public getIsSteadyState(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1c

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-eqz v0, :cond_1c

    .line 257
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1c

    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public getQTableStr()Ljava/lang/String;
    .registers 6

    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v2, :cond_e

    goto :goto_5c

    .line 281
    :cond_e
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_61

    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    const/4 v1, 0x0

    move v2, v1

    .line 284
    :goto_21
    iget v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge v2, v3, :cond_61

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_42

    new-array v3, v4, [Ljava/lang/Object;

    .line 286
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, " %.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_59

    :cond_42
    new-array v3, v4, [Ljava/lang/Object;

    .line 288
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, " %.2f /"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_5c
    :goto_5c
    const-string p0, "null / null / null"

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQtables()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    return-object p0
.end method

.method public getSteadyStateNum()I
    .registers 3

    .line 246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 247
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return v0
.end method

.method public printApLists()V
    .registers 14

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cand: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v1, :cond_13

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string v0, "PrintApLists - QTable Container is null"

    .line 312
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_13
    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, " <%s;%s;%s> "

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_32

    goto :goto_1d

    :cond_32
    new-array v3, v3, [Ljava/lang/Object;

    .line 319
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    iget-object v7, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    .line 320
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v7, v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v8, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v5

    .line 319
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    :cond_75
    const-string v1, "], Core: ["

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_95

    goto :goto_86

    :cond_95
    new-array v8, v5, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    .line 328
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v9, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v6

    const-string v2, " <%s;%s> "

    .line 327
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_86

    :cond_c3
    const-string v1, "], Prob: ["

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_e3

    goto :goto_d4

    :cond_e3
    new-array v8, v3, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v9, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    .line 335
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget v9, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v11, v11, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v11, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v5

    .line 334
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d4

    :cond_126
    const-string v1, "]"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz p0, :cond_138

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "List of Known APs"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    return-void
.end method

.method public printCurrentTable(Ljava/lang/String;)V
    .registers 11

    .line 381
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v1, :cond_11

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string p1, "PrintCurrentTable - QTable Container is null"

    .line 385
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v1, 0x0

    move v2, v1

    .line 389
    :goto_13
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d0

    .line 390
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 391
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 392
    iget-object v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v1

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v6

    aget v5, v5, v1

    .line 393
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v8, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v8, v8, v7

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "< %s - %.2f %.2f %.2f >"

    .line 392
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v4, v7, [Ljava/lang/Object;

    .line 395
    iget-boolean v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, " < isSteadyState - %d, mLastSNS - %d >"

    .line 394
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, " < EventBuffer "

    .line 396
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, " %d"

    .line 398
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9a

    :cond_b4
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, " >"

    .line 400
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz v3, :cond_cc

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Qtable Dump(current bssid)"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    :cond_d0
    return-void
.end method

.method public printTable()V
    .registers 10

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v0, :cond_c

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string v0, "PrintTable - QTable Container is null"

    .line 361
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 365
    :goto_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ca

    .line 366
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 368
    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v0

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v8, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v8, v8, v7

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "< %s - %f.2 %f.2 %f.2 >"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v4, v7, [Ljava/lang/Object;

    .line 369
    iget-boolean v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget v5, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, " < isSteadyState - %d, mLastSNS - %d >"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, " < EventBuffer "

    .line 370
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, " %d"

    .line 372
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_94

    :cond_ae
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, " >"

    .line 374
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz v3, :cond_c6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Qtable Dump"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_ca
    return-void
.end method

.method public putBssidToConfigKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 407
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez p0, :cond_7

    goto :goto_b

    .line 411
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->putBssidToConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    return-void

    .line 408
    :cond_b
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QTable Container is null or "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IWCMonitor.RFLearningTop"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized rebase()Z
    .registers 4

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    const-string v0, "IWCMonitor.RFLearningTop"

    const-string v1, "updateTable - findTable returned -1"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_40

    const/4 v0, 0x0

    .line 113
    monitor-exit p0

    return v0

    .line 115
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->updateApListAccessTime(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastUpdateTime:J

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->setDefaultQAI(Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->rebaseQTables()V
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_40

    const/4 v0, 0x1

    .line 121
    monitor-exit p0

    return v0

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeConfigKey(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 415
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez p0, :cond_7

    goto :goto_b

    .line 419
    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeConfigKey(Ljava/lang/String;)Ljava/util/Set;

    return-void

    .line 416
    :cond_b
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QTable Container is null or "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IWCMonitor.RFLearningTop"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeNonSSQtables()V
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeNonSSQtables()V

    return-void
.end method

.method public removeQtableIfExist(Ljava/lang/String;)I
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez p0, :cond_d

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string p1, "removeQtableIfExist - QTable Container is null"

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 221
    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->removeQtableIfExist(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCurrentAP(Ljava/lang/String;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    return-void
.end method

.method public setCurrentState(I)V
    .registers 2

    .line 229
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    return-void
.end method

.method public setDefaultQAI()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->mLock:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->setDefaultQAI(Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V

    .line 37
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setDefaultQAI(I)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->setDefaultQAI(I)V

    return-void
.end method

.method public setQtables(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 303
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    :cond_4
    return-void
.end method

.method public updateDebugIntent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Ljava/lang/String;Z)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v5

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->getEventTypeString(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Z)Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mContext:Landroid/content/Context;

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->updateDebugIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V

    return-void
.end method

.method public updateQAI()I
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    const/4 v1, -0x1

    if-nez v0, :cond_d

    const-string p0, "IWCMonitor.RFLearningTop"

    const-string v0, "updateQAI - QTable Container is null"

    .line 345
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 349
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1f

    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->getTableStateCB(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    .line 353
    :cond_1f
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    return p0
.end method

.method public declared-synchronized updateTable(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;J)Z
    .registers 14

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsOptionChanged:Z

    if-eqz v0, :cond_1cf

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    if-nez v0, :cond_19

    const-string p1, "IWCMonitor.RFLearningTop"

    const-string p2, "updateTable - QTable Container is null"

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d1

    .line 137
    monitor-exit p0

    return v2

    .line 140
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->manageApList()V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->printApLists()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_42

    .line 149
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->addCandidateList(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->createTable(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;)V

    .line 156
    :cond_42
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentState:I

    .line 160
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    move-object v4, p1

    move-wide v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->applyRewards(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;J)I

    move-result p2

    .line 162
    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v1, :cond_65

    const-string p1, "IWCMonitor.RFLearningTop"

    const-string p2, "updateTable - findTable returned -1"

    .line 164
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_1d1

    .line 165
    monitor-exit p0

    return v2

    .line 167
    :cond_65
    :try_start_65
    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->updateApListAccessTime(Ljava/lang/String;)V

    .line 170
    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->getTableStateCB(Ljava/lang/String;)I

    move-result p3

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    const/4 v3, 0x1

    if-eq p2, v3, :cond_90

    .line 177
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result p2

    if-ne p2, v3, :cond_8e

    if-eq v0, p3, :cond_8e

    goto :goto_90

    :cond_8e
    move p2, v2

    goto :goto_91

    :cond_90
    :goto_90
    move p2, v3

    .line 182
    :goto_91
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-boolean v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->getEventTypeString(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, "NONE"

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 184
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->rwManager:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v7, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mContext:Landroid/content/Context;

    iget-object v9, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    move-object v5, v7

    move-object v7, v9

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->sendDebugIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V

    .line 187
    :cond_b1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->currentAP:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->recordApActivity(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setOUIInfo(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v4, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setStateInfo(Z)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {p1, v0, p3}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setQAIInfo(II)V

    .line 194
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    iget-object v0, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, " %d"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 197
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e1

    :cond_fb
    const-string v0, "%.2f %.2f %.2f"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 199
    iget-object v5, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v2

    aget v5, v5, v2

    .line 200
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v5, v5, v3

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    const/4 v3, 0x2

    aget-object v1, v1, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v3

    .line 199
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setEVInfo(Ljava/lang/String;)V

    .line 202
    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setQTableValueInfo(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->getIdInfo()I

    move-result p1

    if-ne p1, v3, :cond_1ce

    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    if-eqz p1, :cond_1ce

    .line 205
    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_179

    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->candidateApList:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v2, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setSSTakenTimeInfo(J)V

    goto :goto_1ce

    .line 207
    :cond_179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1a4

    .line 208
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->coreApList:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v2, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setSSTakenTimeInfo(J)V

    goto :goto_1ce

    .line 209
    :cond_1a4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1ce

    .line 210
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->qTables:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->probationApList:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    iget-wide v2, p3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setSSTakenTimeInfo(J)V
    :try_end_1ce
    .catchall {:try_start_65 .. :try_end_1ce} :catchall_1d1

    :cond_1ce
    :goto_1ce
    move v2, p2

    .line 213
    :cond_1cf
    monitor-exit p0

    return v2

    :catchall_1d1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
