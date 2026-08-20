.class public Lcom/xgboost/RegTreeNodeStat;
.super Ljava/lang/Object;
.source "RegTreeNodeStat.java"

# interfaces
.implements Lcom/xgboost/INodeStat;
.implements Ljava/io/Serializable;


# instance fields
.field final base_weight:F

.field final leaf_child_cnt:I

.field final loss_chg:F

.field final sum_hess:F


# direct methods
.method constructor <init>(Lcom/xgboost/ModelReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeNodeStat;->loss_chg:F

    .line 18
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeNodeStat;->sum_hess:F

    .line 19
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeNodeStat;->base_weight:F

    .line 20
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/RegTreeNodeStat;->leaf_child_cnt:I

    return-void
.end method


# virtual methods
.method public getBaseWeight()F
    .registers 1

    .line 46
    iget p0, p0, Lcom/xgboost/RegTreeNodeStat;->base_weight:F

    return p0
.end method

.method public getCover()F
    .registers 1

    .line 39
    iget p0, p0, Lcom/xgboost/RegTreeNodeStat;->sum_hess:F

    return p0
.end method

.method public getGain()F
    .registers 1

    .line 32
    iget p0, p0, Lcom/xgboost/RegTreeNodeStat;->loss_chg:F

    return p0
.end method

.method public getLeafCount()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/xgboost/RegTreeNodeStat;->leaf_child_cnt:I

    return p0
.end method

.method public getWeight()F
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/xgboost/RegTreeNodeStat;->getCover()F

    move-result p0

    return p0
.end method
