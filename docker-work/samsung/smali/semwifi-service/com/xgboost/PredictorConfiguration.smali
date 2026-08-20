.class public Lcom/xgboost/PredictorConfiguration;
.super Ljava/lang/Object;
.source "PredictorConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/PredictorConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/xgboost/PredictorConfiguration;


# instance fields
.field private objFunction:Lcom/xgboost/ObjFunction;

.field private regTreeFactory:Lcom/xgboost/RegTreeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/xgboost/PredictorConfiguration;

    invoke-direct {v0}, Lcom/xgboost/PredictorConfiguration;-><init>()V

    sput-object v0, Lcom/xgboost/PredictorConfiguration;->DEFAULT:Lcom/xgboost/PredictorConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/xgboost/DefaultRegTreeFactory;->INSTANCE:Lcom/xgboost/RegTreeFactory;

    iput-object v0, p0, Lcom/xgboost/PredictorConfiguration;->regTreeFactory:Lcom/xgboost/RegTreeFactory;

    return-void
.end method

.method static synthetic access$002(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ObjFunction;)Lcom/xgboost/ObjFunction;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/xgboost/PredictorConfiguration;->objFunction:Lcom/xgboost/ObjFunction;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/RegTreeFactory;)Lcom/xgboost/RegTreeFactory;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/xgboost/PredictorConfiguration;->regTreeFactory:Lcom/xgboost/RegTreeFactory;

    return-object p1
.end method

.method public static builder()Lcom/xgboost/PredictorConfiguration$Builder;
    .registers 1

    .line 46
    new-instance v0, Lcom/xgboost/PredictorConfiguration$Builder;

    invoke-direct {v0}, Lcom/xgboost/PredictorConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getObjFunction()Lcom/xgboost/ObjFunction;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/xgboost/PredictorConfiguration;->objFunction:Lcom/xgboost/ObjFunction;

    return-object p0
.end method

.method public getRegTreeFactory()Lcom/xgboost/RegTreeFactory;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/xgboost/PredictorConfiguration;->regTreeFactory:Lcom/xgboost/RegTreeFactory;

    return-object p0
.end method
