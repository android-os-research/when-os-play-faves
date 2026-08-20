.class public interface abstract Lcom/xgboost/GradBooster;
.super Ljava/lang/Object;
.source "GradBooster.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/GradBooster$Factory;
    }
.end annotation


# virtual methods
.method public abstract loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract predict(Lcom/xgboost/FVec;I)[F
.end method

.method public abstract predictLeaf(Lcom/xgboost/FVec;I)[I
.end method

.method public abstract predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;
.end method

.method public abstract predictSingle(Lcom/xgboost/FVec;I)F
.end method

.method public abstract setNumClass(I)V
.end method

.method public abstract setNumFeature(I)V
.end method
