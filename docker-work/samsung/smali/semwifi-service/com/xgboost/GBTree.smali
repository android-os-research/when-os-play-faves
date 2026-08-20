.class public Lcom/xgboost/GBTree;
.super Lcom/xgboost/GBBase;
.source "GBTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/GBTree$ModelParam;
    }
.end annotation


# instance fields
.field _groupTrees:[[Lcom/xgboost/RegTree;

.field mparam:Lcom/xgboost/GBTree$ModelParam;

.field private trees:[Lcom/xgboost/RegTree;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/xgboost/GBBase;-><init>()V

    return-void
.end method

.method private predBufferSize()J
    .registers 5

    .line 107
    iget v0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/xgboost/GBTree;->mparam:Lcom/xgboost/GBTree$ModelParam;

    iget-wide v2, p0, Lcom/xgboost/GBTree$ModelParam;->num_pbuffer:J

    mul-long/2addr v0, v2

    iget p0, p0, Lcom/xgboost/GBTree$ModelParam;->size_leaf_vector:I

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getGroupedTrees()[[Lcom/xgboost/RegTree;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    return-object p0
.end method

.method public loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/xgboost/GBTree$ModelParam;

    invoke-direct {v0, p2}, Lcom/xgboost/GBTree$ModelParam;-><init>(Lcom/xgboost/ModelReader;)V

    iput-object v0, p0, Lcom/xgboost/GBTree;->mparam:Lcom/xgboost/GBTree$ModelParam;

    .line 20
    iget v0, v0, Lcom/xgboost/GBTree$ModelParam;->num_trees:I

    new-array v0, v0, [Lcom/xgboost/RegTree;

    iput-object v0, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    const/4 v0, 0x0

    move v1, v0

    .line 21
    :goto_f
    iget-object v2, p0, Lcom/xgboost/GBTree;->mparam:Lcom/xgboost/GBTree$ModelParam;

    iget v2, v2, Lcom/xgboost/GBTree$ModelParam;->num_trees:I

    if-ge v1, v2, :cond_24

    .line 22
    iget-object v2, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    invoke-virtual {p1}, Lcom/xgboost/PredictorConfiguration;->getRegTreeFactory()Lcom/xgboost/RegTreeFactory;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/xgboost/RegTreeFactory;->loadTree(Lcom/xgboost/ModelReader;)Lcom/xgboost/RegTree;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    if-lez v2, :cond_2b

    .line 25
    invoke-virtual {p2, v2}, Lcom/xgboost/ModelReader;->readIntArray(I)[I

    move-result-object p1

    goto :goto_2d

    :cond_2b
    new-array p1, v0, [I

    .line 27
    :goto_2d
    iget-object v1, p0, Lcom/xgboost/GBTree;->mparam:Lcom/xgboost/GBTree$ModelParam;

    iget-wide v1, v1, Lcom/xgboost/GBTree$ModelParam;->num_pbuffer:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4b

    if-eqz p3, :cond_4b

    .line 28
    invoke-direct {p0}, Lcom/xgboost/GBTree;->predBufferSize()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Lcom/xgboost/ModelReader;->skip(J)V

    .line 29
    invoke-direct {p0}, Lcom/xgboost/GBTree;->predBufferSize()J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Lcom/xgboost/ModelReader;->skip(J)V

    .line 32
    :cond_4b
    iget p2, p0, Lcom/xgboost/GBBase;->num_output_group:I

    new-array p2, p2, [[Lcom/xgboost/RegTree;

    iput-object p2, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    move p2, v0

    .line 33
    :goto_52
    iget p3, p0, Lcom/xgboost/GBBase;->num_output_group:I

    if-ge p2, p3, :cond_86

    move p3, v0

    move v1, p3

    .line 35
    :goto_58
    array-length v2, p1

    if-ge p3, v2, :cond_64

    .line 36
    aget v2, p1, p3

    if-ne v2, p2, :cond_61

    add-int/lit8 v1, v1, 0x1

    :cond_61
    add-int/lit8 p3, p3, 0x1

    goto :goto_58

    .line 41
    :cond_64
    iget-object p3, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    new-array v1, v1, [Lcom/xgboost/RegTree;

    aput-object v1, p3, p2

    move p3, v0

    move v1, p3

    .line 44
    :goto_6c
    array-length v2, p1

    if-ge p3, v2, :cond_83

    .line 45
    aget v2, p1, p3

    if-ne v2, p2, :cond_80

    .line 46
    iget-object v2, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    aget-object v2, v2, p2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    aget-object v4, v4, p3

    aput-object v4, v2, v1

    move v1, v3

    :cond_80
    add-int/lit8 p3, p3, 0x1

    goto :goto_6c

    :cond_83
    add-int/lit8 p2, p2, 0x1

    goto :goto_52

    :cond_86
    return-void
.end method

.method pred(Lcom/xgboost/FVec;III)F
    .registers 7

    .line 72
    iget-object p0, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    aget-object p0, p0, p2

    if-nez p4, :cond_7

    .line 73
    array-length p4, p0

    :cond_7
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p4, :cond_15

    .line 77
    aget-object v1, p0, v0

    invoke-interface {v1, p1, p3}, Lcom/xgboost/RegTree;->getLeafValue(Lcom/xgboost/FVec;I)F

    move-result v1

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    return p2
.end method

.method public predict(Lcom/xgboost/FVec;I)[F
    .registers 7

    .line 54
    iget v0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_6
    iget v3, p0, Lcom/xgboost/GBBase;->num_output_group:I

    if-ge v2, v3, :cond_13

    .line 56
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/xgboost/GBTree;->pred(Lcom/xgboost/FVec;III)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    return-object v0
.end method

.method public predictLeaf(Lcom/xgboost/FVec;I)[I
    .registers 6

    if-nez p2, :cond_5

    .line 85
    iget-object p2, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    array-length p2, p2

    .line 86
    :cond_5
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_17

    .line 88
    iget-object v2, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/xgboost/RegTree;->getLeafIndex(Lcom/xgboost/FVec;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method public predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;
    .registers 8

    if-nez p2, :cond_5

    .line 95
    iget-object p2, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    array-length p2, p2

    .line 96
    :cond_5
    new-array v0, p2, [Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, p2, :cond_25

    .line 99
    iget-object v4, p0, Lcom/xgboost/GBTree;->trees:[Lcom/xgboost/RegTree;

    aget-object v4, v4, v3

    invoke-interface {v4, p1, v1}, Lcom/xgboost/RegTree;->getLeafPath(Lcom/xgboost/FVec;Ljava/lang/StringBuilder;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_25
    return-object v0
.end method

.method public predictSingle(Lcom/xgboost/FVec;I)F
    .registers 5

    .line 63
    iget v0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/xgboost/GBTree;->pred(Lcom/xgboost/FVec;III)F

    move-result p0

    return p0

    .line 64
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t invoke predictSingle() because this model outputs multiple values: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setNumClass(I)V
    .registers 2

    .line 9
    invoke-super {p0, p1}, Lcom/xgboost/GBBase;->setNumClass(I)V

    return-void
.end method

.method public bridge synthetic setNumFeature(I)V
    .registers 2

    .line 9
    invoke-super {p0, p1}, Lcom/xgboost/GBBase;->setNumFeature(I)V

    return-void
.end method
