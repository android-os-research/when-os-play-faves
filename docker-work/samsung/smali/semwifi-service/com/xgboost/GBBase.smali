.class abstract Lcom/xgboost/GBBase;
.super Ljava/lang/Object;
.source "GradBooster.java"

# interfaces
.implements Lcom/xgboost/GradBooster;


# instance fields
.field protected num_class:I

.field protected num_feature:I

.field protected num_output_group:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setNumClass(I)V
    .registers 2

    .line 92
    iput p1, p0, Lcom/xgboost/GBBase;->num_class:I

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 93
    :cond_5
    iput p1, p0, Lcom/xgboost/GBBase;->num_output_group:I

    return-void
.end method

.method public setNumFeature(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/xgboost/GBBase;->num_feature:I

    return-void
.end method
