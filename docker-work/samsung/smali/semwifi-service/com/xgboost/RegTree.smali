.class public interface abstract Lcom/xgboost/RegTree;
.super Ljava/lang/Object;
.source "RegTree.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getLeafIndex(Lcom/xgboost/FVec;)I
.end method

.method public abstract getLeafPath(Lcom/xgboost/FVec;Ljava/lang/StringBuilder;)V
.end method

.method public abstract getLeafValue(Lcom/xgboost/FVec;I)F
.end method

.method public abstract getNodes()[Lcom/xgboost/RegTreeNode;
.end method

.method public abstract getStats()[Lcom/xgboost/RegTreeNodeStat;
.end method
