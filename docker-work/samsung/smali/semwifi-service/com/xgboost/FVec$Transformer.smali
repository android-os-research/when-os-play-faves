.class public Lcom/xgboost/FVec$Transformer;
.super Ljava/lang/Object;
.source "FVec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/FVec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArray([DZ)Lcom/xgboost/FVec;
    .registers 3

    .line 42
    new-instance v0, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;

    invoke-direct {v0, p0, p1}, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;-><init>([DZ)V

    return-object v0
.end method

.method public static fromArray([FZ)Lcom/xgboost/FVec;
    .registers 3

    .line 31
    new-instance v0, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;

    invoke-direct {v0, p0, p1}, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;-><init>([FZ)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/xgboost/FVec;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/xgboost/FVec;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/xgboost/FVecMapImpl;

    invoke-direct {v0, p0}, Lcom/xgboost/FVecMapImpl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
