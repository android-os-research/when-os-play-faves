.class Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;
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
    name = "FVecFloatArrayImpl"
.end annotation


# instance fields
.field private final treatsZeroAsNA:Z

.field private final values:[F


# direct methods
.method constructor <init>([FZ)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;->values:[F

    .line 82
    iput-boolean p2, p0, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;->treatsZeroAsNA:Z

    return-void
.end method


# virtual methods
.method public fvalue(I)F
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;->values:[F

    array-length v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-gt v1, p1, :cond_8

    return v2

    .line 91
    :cond_8
    aget p1, v0, p1

    .line 92
    iget-boolean p0, p0, Lcom/xgboost/FVecArrayImpl$FVecFloatArrayImpl;->treatsZeroAsNA:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return p1
.end method
