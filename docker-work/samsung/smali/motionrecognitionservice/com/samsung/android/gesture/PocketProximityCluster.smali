.class public Lcom/samsung/android/gesture/PocketProximityCluster;
.super Ljava/lang/Object;
.source "PocketProximityCluster.java"


# static fields
.field public static final AVAILABLE_THD:I = 0x190

.field public static final CLUSTERING_COUNT:I = 0x5

.field public static final MAX_CLUSTERING_RAWDATA:I = 0x1e

.field public static final MIN_CLUSTERING_NEED_DATA:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static pocketProximityCluster:Lcom/samsung/android/gesture/PocketProximityCluster;


# instance fields
.field private closeCentroid:I

.field private clusteringFlag:Z

.field private openCentroid:I

.field private rawDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/ClusterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const-class v0, Lcom/samsung/android/gesture/PocketProximityCluster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityCluster;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketProximityCluster;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->pocketProximityCluster:Lcom/samsung/android/gesture/PocketProximityCluster;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    .line 18
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    .line 19
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    return-void
.end method

.method private calcCentroid()V
    .registers 9

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "closeSumData":I
    const/4 v1, 0x0

    .line 76
    .local v1, "openSumData":I
    const/4 v2, 0x0

    .line 77
    .local v2, "closeCnt":I
    const/4 v3, 0x0

    .line 79
    .local v3, "openCnt":I
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/ClusterNode;

    .line 80
    .local v5, "node":Lcom/samsung/android/gesture/ClusterNode;
    invoke-virtual {v5}, Lcom/samsung/android/gesture/ClusterNode;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_25

    .line 81
    invoke-virtual {v5}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v6

    add-int/2addr v0, v6

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 83
    :cond_25
    invoke-virtual {v5}, Lcom/samsung/android/gesture/ClusterNode;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    .line 84
    invoke-virtual {v5}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v6

    add-int/2addr v1, v6

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 87
    .end local v5    # "node":Lcom/samsung/android/gesture/ClusterNode;
    :cond_33
    :goto_33
    goto :goto_a

    .line 88
    :cond_34
    if-eqz v3, :cond_3a

    .line 89
    div-int v4, v1, v3

    iput v4, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    .line 90
    :cond_3a
    if-eqz v2, :cond_40

    .line 91
    div-int v4, v0, v2

    iput v4, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    .line 92
    :cond_40
    return-void
.end method

.method private calcNodeState(I)I
    .registers 5
    .param p1, "data"    # I

    .line 126
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 127
    .local v0, "closeData":I
    iget v1, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 129
    .local v1, "openData":I
    if-ge v0, v1, :cond_14

    .line 130
    const/4 v2, 0x1

    return v2

    .line 132
    :cond_14
    const/4 v2, 0x2

    return v2
.end method

.method private checkClusterAvailable()V
    .registers 7

    .line 95
    const/4 v0, 0x0

    .local v0, "openCnt":I
    const/4 v1, 0x0

    .line 97
    .local v1, "closeCnt":I
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->calcCentroid()V

    .line 98
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/ClusterNode;

    .line 99
    .local v3, "node":Lcom/samsung/android/gesture/ClusterNode;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/ClusterNode;->getState()I

    move-result v5

    if-ne v5, v4, :cond_21

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 101
    :cond_21
    invoke-virtual {v3}, Lcom/samsung/android/gesture/ClusterNode;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 104
    .end local v3    # "node":Lcom/samsung/android/gesture/ClusterNode;
    :cond_2a
    :goto_2a
    goto :goto_b

    .line 106
    :cond_2b
    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    iget v3, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    sub-int/2addr v2, v3

    const/16 v3, 0x190

    if-lt v2, v3, :cond_3b

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    goto :goto_3e

    .line 109
    :cond_3b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    .line 110
    :goto_3e
    return-void
.end method

.method private checkNodeState()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ClusterNode;

    .line 68
    .local v1, "node":Lcom/samsung/android/gesture/ClusterNode;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/PocketProximityCluster;->calcNodeState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/ClusterNode;->setState(I)V

    .line 69
    .end local v1    # "node":Lcom/samsung/android/gesture/ClusterNode;
    goto :goto_6

    .line 71
    :cond_1e
    return-void
.end method

.method private getInitCentroid()V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/ClusterNode;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ClusterNode;

    .line 116
    .local v1, "node":Lcom/samsung/android/gesture/ClusterNode;
    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v3

    if-le v2, v3, :cond_31

    .line 117
    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    .line 118
    :cond_31
    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    .line 120
    .end local v1    # "node":Lcom/samsung/android/gesture/ClusterNode;
    :cond_3f
    goto :goto_17

    .line 122
    :cond_40
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init centroid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketProximityCluster;
    .registers 1

    .line 22
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->pocketProximityCluster:Lcom/samsung/android/gesture/PocketProximityCluster;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityCluster;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketProximityCluster;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->pocketProximityCluster:Lcom/samsung/android/gesture/PocketProximityCluster;

    .line 25
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->pocketProximityCluster:Lcom/samsung/android/gesture/PocketProximityCluster;

    return-object v0
.end method

.method private learnClustering()V
    .registers 4

    .line 54
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    const-string v1, "Learn Clustering"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    if-nez v0, :cond_e

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->getInitCentroid()V

    .line 58
    :cond_e
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1b

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->checkNodeState()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->calcCentroid()V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 63
    .end local v0    # "i":I
    :cond_1b
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Centroid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private printNodeList()V
    .registers 6

    .line 136
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    const-string v1, "========== printNodeList =========="

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ClusterNode;

    .line 139
    .local v1, "node":Lcom/samsung/android/gesture/ClusterNode;
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v1    # "node":Lcom/samsung/android/gesture/ClusterNode;
    goto :goto_d

    .line 141
    :cond_44
    return-void
.end method


# virtual methods
.method public getCloseCentroid()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    return v0
.end method

.method public getCurrentProxState(I)I
    .registers 3
    .param p1, "data"    # I

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketProximityCluster;->calcNodeState(I)I

    move-result v0

    return v0
.end method

.method public getOpenCentroid()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    return v0
.end method

.method public inputProxData(I)V
    .registers 6
    .param p1, "data"    # I

    .line 29
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/ClusterNode;

    .line 30
    .local v1, "node":Lcom/samsung/android/gesture/ClusterNode;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/ClusterNode;->getData()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 31
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityCluster;->TAG:Ljava/lang/String;

    const-string v2, "data duplication"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 34
    .end local v1    # "node":Lcom/samsung/android/gesture/ClusterNode;
    :cond_20
    goto :goto_6

    .line 35
    :cond_21
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 36
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/gesture/ClusterNode;

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketProximityCluster;->calcNodeState(I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/gesture/ClusterNode;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 38
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/gesture/ClusterNode;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/gesture/ClusterNode;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_66

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->learnClustering()V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->checkClusterAvailable()V

    .line 46
    :goto_4f
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_5e

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_5e
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    if-eqz v0, :cond_65

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketProximityCluster;->checkClusterAvailable()V

    .line 51
    :cond_65
    return-void

    .line 43
    :cond_66
    return-void
.end method

.method public resetCluster()V
    .registers 2

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->clusteringFlag:Z

    .line 179
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->openCentroid:I

    .line 180
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->closeCentroid:I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityCluster;->rawDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    return-void
.end method
