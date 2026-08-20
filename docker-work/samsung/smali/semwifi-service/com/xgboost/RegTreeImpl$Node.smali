.class public Lcom/xgboost/RegTreeImpl$Node;
.super Lcom/xgboost/RegTreeNode;
.source "RegTreeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/RegTreeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private final _defaultNext:I

.field final _isLeaf:Z

.field private final _splitIndex:I

.field final cleft_:I

.field final cright_:I

.field final leaf_value:F

.field final parent_:I

.field final sindex_:I

.field final split_cond:F


# direct methods
.method constructor <init>(Lcom/xgboost/ModelReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/xgboost/RegTreeNode;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Node;->parent_:I

    .line 147
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    .line 148
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Node;->cright_:I

    .line 149
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Node;->sindex_:I

    .line 151
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl$Node;->isLeaf()Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_2c

    .line 152
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/xgboost/RegTreeImpl$Node;->leaf_value:F

    .line 153
    iput v1, p0, Lcom/xgboost/RegTreeImpl$Node;->split_cond:F

    goto :goto_34

    .line 155
    :cond_2c
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/xgboost/RegTreeImpl$Node;->split_cond:F

    .line 156
    iput v1, p0, Lcom/xgboost/RegTreeImpl$Node;->leaf_value:F

    .line 159
    :goto_34
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl$Node;->cdefault()I

    move-result p1

    iput p1, p0, Lcom/xgboost/RegTreeImpl$Node;->_defaultNext:I

    .line 160
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl$Node;->getSplitIndex()I

    move-result p1

    iput p1, p0, Lcom/xgboost/RegTreeImpl$Node;->_splitIndex:I

    .line 161
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl$Node;->isLeaf()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xgboost/RegTreeImpl$Node;->_isLeaf:Z

    return-void
.end method


# virtual methods
.method public cdefault()I
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/xgboost/RegTreeImpl$Node;->default_left()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cright_:I

    :goto_b
    return p0
.end method

.method public default_left()Z
    .registers 1

    .line 179
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->sindex_:I

    ushr-int/lit8 p0, p0, 0x1f

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getLeafValue()F
    .registers 1

    .line 213
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->leaf_value:F

    return p0
.end method

.method public getLeftChildIndex()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    return p0
.end method

.method public getParentIndex()I
    .registers 1

    .line 193
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->parent_:I

    return p0
.end method

.method public getRightChildIndex()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cright_:I

    return p0
.end method

.method public getSplitCondition()F
    .registers 1

    .line 208
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->split_cond:F

    return p0
.end method

.method public getSplitIndex()I
    .registers 5

    .line 170
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->sindex_:I

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public isLeaf()Z
    .registers 2

    .line 165
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public next(Lcom/xgboost/FVec;)I
    .registers 3

    .line 184
    iget v0, p0, Lcom/xgboost/RegTreeImpl$Node;->_splitIndex:I

    invoke-interface {p1, v0}, Lcom/xgboost/FVec;->fvalue(I)F

    move-result p1

    cmpl-float v0, p1, p1

    if-eqz v0, :cond_d

    .line 186
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->_defaultNext:I

    return p0

    .line 188
    :cond_d
    iget v0, p0, Lcom/xgboost/RegTreeImpl$Node;->split_cond:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_16

    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cleft_:I

    goto :goto_18

    :cond_16
    iget p0, p0, Lcom/xgboost/RegTreeImpl$Node;->cright_:I

    :goto_18
    return p0
.end method

.method public bridge synthetic next(Ljava/lang/Object;)I
    .registers 2

    .line 128
    check-cast p1, Lcom/xgboost/FVec;

    invoke-virtual {p0, p1}, Lcom/xgboost/RegTreeImpl$Node;->next(Lcom/xgboost/FVec;)I

    move-result p0

    return p0
.end method
