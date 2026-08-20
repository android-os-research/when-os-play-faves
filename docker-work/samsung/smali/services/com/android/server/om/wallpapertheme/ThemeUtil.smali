.class public Lcom/android/server/om/wallpapertheme/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(FI)Ljava/lang/Integer;
    .registers 4

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 12
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
