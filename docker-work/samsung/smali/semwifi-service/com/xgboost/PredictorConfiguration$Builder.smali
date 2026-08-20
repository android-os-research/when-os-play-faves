.class public Lcom/xgboost/PredictorConfiguration$Builder;
.super Ljava/lang/Object;
.source "PredictorConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/PredictorConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private predictorConfiguration:Lcom/xgboost/PredictorConfiguration;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/xgboost/PredictorConfiguration;

    invoke-direct {v0}, Lcom/xgboost/PredictorConfiguration;-><init>()V

    iput-object v0, p0, Lcom/xgboost/PredictorConfiguration$Builder;->predictorConfiguration:Lcom/xgboost/PredictorConfiguration;

    return-void
.end method


# virtual methods
.method public build()Lcom/xgboost/PredictorConfiguration;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/xgboost/PredictorConfiguration$Builder;->predictorConfiguration:Lcom/xgboost/PredictorConfiguration;

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/xgboost/PredictorConfiguration$Builder;->predictorConfiguration:Lcom/xgboost/PredictorConfiguration;

    return-object v0
.end method

.method public objFunction(Lcom/xgboost/ObjFunction;)Lcom/xgboost/PredictorConfiguration$Builder;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/xgboost/PredictorConfiguration$Builder;->predictorConfiguration:Lcom/xgboost/PredictorConfiguration;

    # setter for: Lcom/xgboost/PredictorConfiguration;->objFunction:Lcom/xgboost/ObjFunction;
    invoke-static {v0, p1}, Lcom/xgboost/PredictorConfiguration;->access$002(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ObjFunction;)Lcom/xgboost/ObjFunction;

    return-object p0
.end method

.method public regTreeFactory(Lcom/xgboost/RegTreeFactory;)Lcom/xgboost/PredictorConfiguration$Builder;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/xgboost/PredictorConfiguration$Builder;->predictorConfiguration:Lcom/xgboost/PredictorConfiguration;

    # setter for: Lcom/xgboost/PredictorConfiguration;->regTreeFactory:Lcom/xgboost/RegTreeFactory;
    invoke-static {v0, p1}, Lcom/xgboost/PredictorConfiguration;->access$102(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/RegTreeFactory;)Lcom/xgboost/RegTreeFactory;

    return-object p0
.end method
