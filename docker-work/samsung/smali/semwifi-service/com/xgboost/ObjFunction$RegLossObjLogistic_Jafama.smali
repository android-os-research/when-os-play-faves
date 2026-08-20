.class Lcom/xgboost/ObjFunction$RegLossObjLogistic_Jafama;
.super Lcom/xgboost/ObjFunction$RegLossObjLogistic;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegLossObjLogistic_Jafama"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Lcom/xgboost/ObjFunction$RegLossObjLogistic;-><init>()V

    return-void
.end method


# virtual methods
.method sigmoid(F)F
    .registers 4

    neg-float p0, p1

    float-to-double p0, p0

    .line 162
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
