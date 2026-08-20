.class public Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public final mBrightness:F

.field public final mBrightnessOffset:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 6

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 955
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    sub-float/2addr p2, p3

    .line 957
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    const/high16 p2, 0x40200000    # 2.5f

    div-float p3, p1, p2

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v0

    .line 959
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    mul-float/2addr p2, p1

    add-float/2addr p1, v0

    .line 961
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I
    .registers 3

    .line 983
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpl-float v0, p0, p1

    if-lez v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    cmpg-float p0, p0, p1

    if-gez p0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 944
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->compareTo(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)I

    move-result p0

    return p0
.end method

.method public isInSameBoundary(F)Z
    .registers 3

    .line 966
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isInSameBoundary(Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;)Z
    .registers 3

    .line 974
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_10

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1003
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    sub-float/2addr v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    .line 1006
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    mul-float/2addr v0, v2

    .line 1007
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    mul-float/2addr v0, v2

    .line 1008
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 1009
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 1010
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 1011
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x5

    aput-object p0, v1, v0

    const-string p0, "%5.1f -> %5.1f (%+6.1f) @ %6.1f < %6.1f < %6.1f"

    .line 1005
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
