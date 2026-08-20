.class Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjClassify;
.super Lcom/xgboost/ObjFunction;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftmaxMultiClassObjClassify"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/xgboost/ObjFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public predTransform(F)F
    .registers 2

    .line 186
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public predTransform([F)[F
    .registers 8

    const/4 p0, 0x0

    .line 173
    aget v0, p1, p0

    const/4 v1, 0x1

    move v3, p0

    move v2, v1

    .line 174
    :goto_6
    array-length v4, p1

    if-ge v2, v4, :cond_14

    .line 175
    aget v4, p1, v2

    cmpg-float v5, v0, v4

    if-gez v5, :cond_11

    move v3, v2

    move v0, v4

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    new-array p1, v1, [F

    int-to-float v0, v3

    aput v0, p1, p0

    return-object p1
.end method
