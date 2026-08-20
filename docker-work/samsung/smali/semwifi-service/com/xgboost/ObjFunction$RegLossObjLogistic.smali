.class Lcom/xgboost/ObjFunction$RegLossObjLogistic;
.super Lcom/xgboost/ObjFunction;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegLossObjLogistic"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/xgboost/ObjFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public predTransform(F)F
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;->sigmoid(F)F

    move-result p0

    return p0
.end method

.method public predTransform([F)[F
    .registers 4

    const/4 v0, 0x0

    .line 132
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 133
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;->sigmoid(F)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-object p1
.end method

.method public probToMargin(F)F
    .registers 2

    const/high16 p0, 0x3f800000    # 1.0f

    div-float p1, p0, p1

    sub-float/2addr p1, p0

    float-to-double p0, p1

    .line 149
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    neg-double p0, p0

    double-to-float p0, p0

    return p0
.end method

.method sigmoid(F)F
    .registers 2

    neg-float p0, p1

    float-to-double p0, p0

    .line 144
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    div-float/2addr p1, p0

    return p1
.end method
