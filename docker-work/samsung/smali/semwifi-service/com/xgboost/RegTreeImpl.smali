.class public Lcom/xgboost/RegTreeImpl;
.super Ljava/lang/Object;
.source "RegTreeImpl.java"

# interfaces
.implements Lcom/xgboost/RegTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/RegTreeImpl$Node;,
        Lcom/xgboost/RegTreeImpl$Param;
    }
.end annotation


# instance fields
.field private nodes:[Lcom/xgboost/RegTreeImpl$Node;

.field private param:Lcom/xgboost/RegTreeImpl$Param;

.field private stats:[Lcom/xgboost/RegTreeNodeStat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeafIndex(Lcom/xgboost/FVec;)I
    .registers 5

    const/4 v0, 0x0

    .line 45
    :goto_1
    iget-object v1, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    aget-object v1, v1, v0

    iget-boolean v2, v1, Lcom/xgboost/RegTreeImpl$Node;->_isLeaf:Z

    if-nez v2, :cond_e

    .line 46
    invoke-virtual {v1, p1}, Lcom/xgboost/RegTreeImpl$Node;->next(Lcom/xgboost/FVec;)I

    move-result v0

    goto :goto_1

    :cond_e
    return v0
.end method

.method public getLeafPath(Lcom/xgboost/FVec;Ljava/lang/StringBuilder;)V
    .registers 5

    const/4 v0, 0x0

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Lcom/xgboost/RegTreeImpl$Node;->_isLeaf:Z

    if-nez v1, :cond_1b

    .line 62
    invoke-virtual {v0, p1}, Lcom/xgboost/RegTreeImpl$Node;->next(Lcom/xgboost/FVec;)I

    move-result v1

    .line 63
    iget v0, v0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    if-ne v1, v0, :cond_14

    const-string v0, "L"

    goto :goto_16

    :cond_14
    const-string v0, "R"

    :goto_16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public getLeafValue(Lcom/xgboost/FVec;I)F
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    aget-object p2, v0, p2

    .line 77
    :goto_4
    iget-boolean v0, p2, Lcom/xgboost/RegTreeImpl$Node;->_isLeaf:Z

    if-nez v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    invoke-virtual {p2, p1}, Lcom/xgboost/RegTreeImpl$Node;->next(Lcom/xgboost/FVec;)I

    move-result p2

    aget-object p2, v0, p2

    goto :goto_4

    .line 81
    :cond_11
    iget p0, p2, Lcom/xgboost/RegTreeImpl$Node;->leaf_value:F

    return p0
.end method

.method public getNodes()[Lcom/xgboost/RegTreeImpl$Node;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    return-object p0
.end method

.method public bridge synthetic getNodes()[Lcom/xgboost/RegTreeNode;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl;->getNodes()[Lcom/xgboost/RegTreeImpl$Node;

    move-result-object p0

    return-object p0
.end method

.method public getStats()[Lcom/xgboost/RegTreeNodeStat;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/xgboost/RegTreeImpl;->stats:[Lcom/xgboost/RegTreeNodeStat;

    return-object p0
.end method

.method public loadModel(Lcom/xgboost/ModelReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/xgboost/RegTreeImpl$Param;

    invoke-direct {v0, p1}, Lcom/xgboost/RegTreeImpl$Param;-><init>(Lcom/xgboost/ModelReader;)V

    iput-object v0, p0, Lcom/xgboost/RegTreeImpl;->param:Lcom/xgboost/RegTreeImpl$Param;

    .line 24
    iget v0, v0, Lcom/xgboost/RegTreeImpl$Param;->num_nodes:I

    new-array v0, v0, [Lcom/xgboost/RegTreeImpl$Node;

    iput-object v0, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    const/4 v0, 0x0

    move v1, v0

    .line 25
    :goto_f
    iget-object v2, p0, Lcom/xgboost/RegTreeImpl;->param:Lcom/xgboost/RegTreeImpl$Param;

    iget v2, v2, Lcom/xgboost/RegTreeImpl$Param;->num_nodes:I

    if-ge v1, v2, :cond_21

    .line 26
    iget-object v2, p0, Lcom/xgboost/RegTreeImpl;->nodes:[Lcom/xgboost/RegTreeImpl$Node;

    new-instance v3, Lcom/xgboost/RegTreeImpl$Node;

    invoke-direct {v3, p1}, Lcom/xgboost/RegTreeImpl$Node;-><init>(Lcom/xgboost/ModelReader;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 29
    :cond_21
    new-array v1, v2, [Lcom/xgboost/RegTreeNodeStat;

    iput-object v1, p0, Lcom/xgboost/RegTreeImpl;->stats:[Lcom/xgboost/RegTreeNodeStat;

    .line 30
    :goto_25
    iget-object v1, p0, Lcom/xgboost/RegTreeImpl;->param:Lcom/xgboost/RegTreeImpl$Param;

    iget v1, v1, Lcom/xgboost/RegTreeImpl$Param;->num_nodes:I

    if-ge v0, v1, :cond_37

    .line 31
    iget-object v1, p0, Lcom/xgboost/RegTreeImpl;->stats:[Lcom/xgboost/RegTreeNodeStat;

    new-instance v2, Lcom/xgboost/RegTreeNodeStat;

    invoke-direct {v2, p1}, Lcom/xgboost/RegTreeNodeStat;-><init>(Lcom/xgboost/ModelReader;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_37
    return-void
.end method
