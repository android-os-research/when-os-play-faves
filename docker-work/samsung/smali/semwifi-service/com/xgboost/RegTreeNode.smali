.class public abstract Lcom/xgboost/RegTreeNode;
.super Ljava/lang/Object;
.source "RegTreeNode.java"

# interfaces
.implements Lcom/xgboost/INode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xgboost/INode<",
        "Lcom/xgboost/FVec;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract default_left()Z
.end method

.method public abstract getLeafValue()F
.end method

.method public abstract getLeftChildIndex()I
.end method

.method public abstract getParentIndex()I
.end method

.method public abstract getRightChildIndex()I
.end method

.method public abstract getSplitCondition()F
.end method

.method public abstract getSplitIndex()I
.end method
