.class public Lcom/xgboost/Dart;
.super Lcom/xgboost/GBTree;
.source "Dart.java"


# instance fields
.field private weightDrop:[F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/xgboost/GBTree;-><init>()V

    return-void
.end method


# virtual methods
.method public loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/xgboost/GBTree;->loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V

    .line 18
    iget-object p1, p0, Lcom/xgboost/GBTree;->mparam:Lcom/xgboost/GBTree$ModelParam;

    iget p1, p1, Lcom/xgboost/GBTree$ModelParam;->num_trees:I

    if-eqz p1, :cond_14

    .line 19
    invoke-virtual {p2}, Lcom/xgboost/ModelReader;->readLong()J

    move-result-wide v0

    long-to-int p1, v0

    .line 20
    invoke-virtual {p2, p1}, Lcom/xgboost/ModelReader;->readFloatArray(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/Dart;->weightDrop:[F

    :cond_14
    return-void
.end method

.method pred(Lcom/xgboost/FVec;III)F
    .registers 9

    .line 25
    iget-object v0, p0, Lcom/xgboost/GBTree;->_groupTrees:[[Lcom/xgboost/RegTree;

    aget-object p2, v0, p2

    if-nez p4, :cond_7

    .line 26
    array-length p4, p2

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p4, :cond_1a

    .line 30
    iget-object v2, p0, Lcom/xgboost/Dart;->weightDrop:[F

    aget v2, v2, v1

    aget-object v3, p2, v1

    invoke-interface {v3, p1, p3}, Lcom/xgboost/RegTree;->getLeafValue(Lcom/xgboost/FVec;I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return v0
.end method

.method public weight(I)F
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/xgboost/Dart;->weightDrop:[F

    aget p0, p0, p1

    return p0
.end method
