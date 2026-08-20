.class Lcom/xgboost/ObjFunction$RegObjFunction;
.super Lcom/xgboost/ObjFunction;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegObjFunction"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Lcom/xgboost/ObjFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public predTransform(F)F
    .registers 2

    float-to-double p0, p1

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public predTransform([F)[F
    .registers 4

    .line 107
    array-length p0, p1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    const/4 p0, 0x0

    .line 111
    aget v0, p1, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, p0

    return-object p1

    .line 108
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regression problem is supposed to have just a single predicted value, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public probToMargin(F)F
    .registers 2

    float-to-double p0, p1

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
