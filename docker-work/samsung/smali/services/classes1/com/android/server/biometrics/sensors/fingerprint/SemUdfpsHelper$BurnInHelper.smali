.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurnInHelper"
.end annotation


# instance fields
.field public final mIconArray:[I

.field public mIconLocationIndex:I

.field public mMaxMovingSize:I

.field public mX:I

.field public mY:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetNextPosition(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->getNextPosition(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->setMaxMovingSize(Landroid/content/Context;)V

    .line 405
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    const/4 p1, 0x0

    .line 407
    :goto_e
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int v1, v0, v0

    if-ge p1, v1, :cond_1b

    .line 408
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_1b
    mul-int/2addr v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_38

    .line 411
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-int/lit8 p1, v0, 0x1

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-int p1, v1

    if-eq p1, v0, :cond_35

    .line 413
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    aget v2, v1, p1

    .line 414
    aget v3, v1, v0

    aput v3, v1, p1

    .line 415
    aput v2, v1, v0

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 418
    :cond_38
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr p1, p1

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    return-void
.end method


# virtual methods
.method public final getNextPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 436
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->updateLocation()V

    .line 437
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mX:I

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final setMaxMovingSize(Landroid/content/Context;)V
    .registers 4

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 422
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMaxMovingSize() returned: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateLocation()V
    .registers 5

    .line 429
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 430
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int v2, v1, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 431
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    aget v0, v2, v0

    div-int v2, v0, v1

    shr-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mX:I

    .line 432
    rem-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mY:I

    return-void
.end method
