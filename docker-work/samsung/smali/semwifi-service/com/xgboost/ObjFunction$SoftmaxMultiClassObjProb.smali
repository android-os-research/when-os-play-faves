.class Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;
.super Lcom/xgboost/ObjFunction;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftmaxMultiClassObjProb"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Lcom/xgboost/ObjFunction;-><init>()V

    return-void
.end method


# virtual methods
.method exp(F)F
    .registers 2

    float-to-double p0, p1

    .line 220
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public predTransform(F)F
    .registers 2

    .line 216
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public predTransform([F)[F
    .registers 9

    const/4 v0, 0x0

    .line 196
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 197
    :goto_4
    array-length v3, p1

    if-ge v2, v3, :cond_10

    .line 198
    aget v3, p1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    const-wide/16 v2, 0x0

    move v4, v0

    .line 202
    :goto_13
    array-length v5, p1

    if-ge v4, v5, :cond_24

    .line 203
    aget v5, p1, v4

    sub-float/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;->exp(F)F

    move-result v5

    aput v5, p1, v4

    float-to-double v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 207
    :cond_24
    :goto_24
    array-length p0, p1

    if-ge v0, p0, :cond_30

    .line 208
    aget p0, p1, v0

    double-to-float v1, v2

    div-float/2addr p0, v1

    aput p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_30
    return-object p1
.end method
