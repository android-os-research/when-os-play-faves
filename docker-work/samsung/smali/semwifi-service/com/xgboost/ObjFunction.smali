.class public Lcom/xgboost/ObjFunction;
.super Ljava/lang/Object;
.source "ObjFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb_Jafama;,
        Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;,
        Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjClassify;,
        Lcom/xgboost/ObjFunction$RegLossObjLogistic_Jafama;,
        Lcom/xgboost/ObjFunction$RegLossObjLogistic;,
        Lcom/xgboost/ObjFunction$RegObjFunction;
    }
.end annotation


# static fields
.field private static final FUNCTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xgboost/ObjFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xgboost/ObjFunction;->FUNCTIONS:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/xgboost/ObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction;-><init>()V

    const-string v1, "rank:pairwise"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 18
    new-instance v0, Lcom/xgboost/ObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction;-><init>()V

    const-string v1, "rank:ndcg"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 19
    new-instance v0, Lcom/xgboost/ObjFunction$RegLossObjLogistic;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;-><init>()V

    const-string v1, "binary:logistic"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 20
    new-instance v0, Lcom/xgboost/ObjFunction$RegLossObjLogistic;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;-><init>()V

    const-string v1, "reg:logistic"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 21
    new-instance v0, Lcom/xgboost/ObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction;-><init>()V

    const-string v1, "binary:logitraw"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 22
    new-instance v0, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjClassify;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjClassify;-><init>()V

    const-string v1, "multi:softmax"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 23
    new-instance v0, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;-><init>()V

    const-string v1, "multi:softprob"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 24
    new-instance v0, Lcom/xgboost/ObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction;-><init>()V

    const-string v1, "reg:linear"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 25
    new-instance v0, Lcom/xgboost/ObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction;-><init>()V

    const-string v1, "reg:squarederror"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 26
    new-instance v0, Lcom/xgboost/ObjFunction$RegObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$RegObjFunction;-><init>()V

    const-string v1, "reg:gamma"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 27
    new-instance v0, Lcom/xgboost/ObjFunction$RegObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$RegObjFunction;-><init>()V

    const-string v1, "reg:tweedie"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 28
    new-instance v0, Lcom/xgboost/ObjFunction$RegObjFunction;

    invoke-direct {v0}, Lcom/xgboost/ObjFunction$RegObjFunction;-><init>()V

    const-string v1, "count:poisson"

    invoke-static {v1, v0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/xgboost/ObjFunction;
    .registers 3

    .line 38
    sget-object v0, Lcom/xgboost/ObjFunction;->FUNCTIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xgboost/ObjFunction;

    if-eqz v0, :cond_b

    return-object v0

    .line 40
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported objective function."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    sget-object v0, Lcom/xgboost/ObjFunction;->FUNCTIONS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static useFastMathExp(Z)V
    .registers 3

    const-string v0, "multi:softprob"

    const-string v1, "binary:logistic"

    if-eqz p0, :cond_17

    .line 65
    new-instance p0, Lcom/xgboost/ObjFunction$RegLossObjLogistic_Jafama;

    invoke-direct {p0}, Lcom/xgboost/ObjFunction$RegLossObjLogistic_Jafama;-><init>()V

    invoke-static {v1, p0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 66
    new-instance p0, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb_Jafama;

    invoke-direct {p0}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb_Jafama;-><init>()V

    invoke-static {v0, p0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    goto :goto_27

    .line 69
    :cond_17
    new-instance p0, Lcom/xgboost/ObjFunction$RegLossObjLogistic;

    invoke-direct {p0}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;-><init>()V

    invoke-static {v1, p0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    .line 70
    new-instance p0, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;

    invoke-direct {p0}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;-><init>()V

    invoke-static {v0, p0}, Lcom/xgboost/ObjFunction;->register(Ljava/lang/String;Lcom/xgboost/ObjFunction;)V

    :goto_27
    return-void
.end method


# virtual methods
.method public predTransform(F)F
    .registers 2

    return p1
.end method

.method public predTransform([F)[F
    .registers 2

    return-object p1
.end method

.method public probToMargin(F)F
    .registers 2

    return p1
.end method
