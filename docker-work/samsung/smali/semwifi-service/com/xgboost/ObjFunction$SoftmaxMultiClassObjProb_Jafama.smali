.class Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb_Jafama;
.super Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;
.source "ObjFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/ObjFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftmaxMultiClassObjProb_Jafama"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/xgboost/ObjFunction$SoftmaxMultiClassObjProb;-><init>()V

    return-void
.end method


# virtual methods
.method exp(F)F
    .registers 2

    float-to-double p0, p1

    .line 233
    invoke-static {p0, p1}, Lnet/jafama/FastMath;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
