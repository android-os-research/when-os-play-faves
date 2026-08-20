.class public final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "GlobalSaturationTintController.java"


# instance fields
.field public final mMatrixGlobalSaturation:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 1

    const/16 p0, 0x96

    return p0
.end method

.method public getMatrix()[F
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivationLock()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "ColorDisplayService"

    const-string v0, "GlobalSaturationTintController: activation lock"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0

    .line 58
    :cond_15
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setMatrix(I)V
    .registers 8

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_7

    move p1, v1

    goto :goto_a

    :cond_7
    if-le p1, v0, :cond_a

    move p1, v0

    .line 68
    :cond_a
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting saturation level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorDisplayService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2d

    .line 71
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_78

    .line 74
    :cond_2d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/4 v2, 0x3

    new-array v2, v2, [F

    const v3, 0x3e6c8b44    # 0.231f

    mul-float/2addr v3, v0

    aput v3, v2, v1

    const v4, 0x3f370a3d    # 0.715f

    mul-float/2addr v4, v0

    const/4 v5, 0x1

    aput v4, v2, v5

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v4

    const/4 v4, 0x2

    aput v0, v2, v4

    .line 79
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    add-float/2addr v3, p1

    aput v3, p0, v1

    aget v0, v2, v1

    .line 80
    aput v0, p0, v5

    .line 81
    aput v0, p0, v4

    const/4 v0, 0x4

    aget v1, v2, v5

    .line 82
    aput v1, p0, v0

    const/4 v0, 0x5

    add-float v3, v1, p1

    .line 83
    aput v3, p0, v0

    const/4 v0, 0x6

    .line 84
    aput v1, p0, v0

    const/16 v0, 0x8

    aget v1, v2, v4

    .line 85
    aput v1, p0, v0

    const/16 v0, 0x9

    .line 86
    aput v1, p0, v0

    const/16 v0, 0xa

    add-float/2addr v1, p1

    .line 87
    aput v1, p0, v0

    :goto_78
    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 5

    const-string p1, "ColorDisplayService"

    const-string p2, "GlobalSaturationTintController: setUp"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object p1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const/16 p2, 0xb

    .line 43
    :goto_10
    array-length v0, p1

    if-ge p2, v0, :cond_1c

    .line 44
    iget-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    aget v1, p1, p2

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1c
    return-void
.end method
