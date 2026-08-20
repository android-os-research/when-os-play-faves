.class public interface abstract Lcom/xgboost/INode;
.super Ljava/lang/Object;
.source "INode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getLeafValue()F
.end method

.method public abstract getLeftChildIndex()I
.end method

.method public abstract getRightChildIndex()I
.end method

.method public abstract getSplitIndex()I
.end method

.method public abstract isLeaf()Z
.end method

.method public abstract next(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
