.class Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;
.super Ljava/lang/Object;
.source "FVec.java"

# interfaces
.implements Lcom/xgboost/FVec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/FVecArrayImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FVecDoubleArrayImpl"
.end annotation


# instance fields
.field private final treatsZeroAsNA:Z

.field private final values:[D


# direct methods
.method constructor <init>([DZ)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;->values:[D

    .line 106
    iput-boolean p2, p0, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;->treatsZeroAsNA:Z

    return-void
.end method


# virtual methods
.method public fvalue(I)F
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;->values:[D

    array-length v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-gt v1, p1, :cond_8

    return v2

    .line 115
    :cond_8
    aget-wide v0, v0, p1

    .line 116
    iget-boolean p0, p0, Lcom/xgboost/FVecArrayImpl$FVecDoubleArrayImpl;->treatsZeroAsNA:Z

    if-eqz p0, :cond_15

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    double-to-float p0, v0

    return p0
.end method
