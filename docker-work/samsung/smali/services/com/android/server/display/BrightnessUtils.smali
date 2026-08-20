.class public Lcom/android/server/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field public static final A:F = 0.17883277f

.field public static final B:F = 0.28466892f

.field public static final C:F = 0.5599107f

.field public static final R:F = 0.5f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertGammaToLinear(F)F
    .registers 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_c

    div-float/2addr p0, v0

    .line 52
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_1c

    :cond_c
    const v0, 0x3f0f564f

    sub-float/2addr p0, v0

    const v0, 0x3e371ff0

    div-float/2addr p0, v0

    .line 54
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    const v0, 0x3e91c020

    add-float/2addr p0, v0

    :goto_1c
    const/4 v0, 0x0

    const/high16 v1, 0x41400000    # 12.0f

    .line 59
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    div-float/2addr p0, v1

    return p0
.end method

.method public static final convertLinearToGamma(F)F
    .registers 3

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    .line 77
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    goto :goto_21

    :cond_11
    const v0, 0x3e371ff0

    const v1, 0x3e91c020

    sub-float/2addr p0, v1

    .line 79
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, v0

    const v0, 0x3f0f564f

    add-float/2addr p0, v0

    :goto_21
    return p0
.end method
