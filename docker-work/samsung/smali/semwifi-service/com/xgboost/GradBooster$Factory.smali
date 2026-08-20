.class public Lcom/xgboost/GradBooster$Factory;
.super Ljava/lang/Object;
.source "GradBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/GradBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGradBooster(Ljava/lang/String;)Lcom/xgboost/GradBooster;
    .registers 3

    const-string v0, "gbtree"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20
    new-instance p0, Lcom/xgboost/GBTree;

    invoke-direct {p0}, Lcom/xgboost/GBTree;-><init>()V

    return-object p0

    :cond_e
    const-string v0, "gblinear"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22
    new-instance p0, Lcom/xgboost/GBLinear;

    invoke-direct {p0}, Lcom/xgboost/GBLinear;-><init>()V

    return-object p0

    :cond_1c
    const-string v0, "dart"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 24
    new-instance p0, Lcom/xgboost/Dart;

    invoke-direct {p0}, Lcom/xgboost/Dart;-><init>()V

    return-object p0

    .line 27
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported model."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
