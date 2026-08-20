.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;,
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;,
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;,
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;,
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final FINGER_CONTAINER_SIZE:F = 14.5f

.field public static final FOD_POS_PATH:Ljava/lang/String; = "/sys/class/fingerprint/fingerprint/position"

.field public static final HW_LIGHT_GREEN_CIRCLE_DRAW:Ljava/lang/String; = "1"

.field public static final HW_LIGHT_GREEN_CIRCLE_HIDE:Ljava/lang/String; = "0"

.field public static final HW_LIGHT_SOURCE_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/fp_green_circle"

.field public static final IS_OPTICAL:Z

.field public static final OPTICAL_CALIBRATION_LOW_BRIGHTNESS:I = 0x2

.field public static final OPTICAL_CALIBRATION_NORMAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FingerprintService"

.field public static final TIME_DOZE_RESET:I = 0x2710


# instance fields
.field public mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

.field public final mHandler:Landroid/os/Handler;

.field public mLatestHwLightMode:Ljava/lang/String;

.field public mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

.field public mSemSensorActiveArea:Ljava/lang/String;

.field public mSemSensorAreaHeight:Ljava/lang/String;

.field public mSemSensorAreaWidth:Ljava/lang/String;

.field public mSemSensorDraggingArea:Ljava/lang/String;

.field public mSemSensorImageSize:Ljava/lang/String;

.field public mSemSensorMarginBottom:Ljava/lang/String;

.field public mSemSensorMarginLeft:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpticalImpl(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 62
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "9"

    .line 75
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    const-string v0, "4"

    .line 76
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    const-string v0, "13.77"

    .line 77
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    const-string v0, "0"

    .line 78
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    const-string v0, "13.00"

    .line 79
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    const-string v0, "14.80"

    .line 80
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    const-string v0, "5.00"

    .line 81
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mLatestHwLightMode:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mHandler:Landroid/os/Handler;

    .line 103
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_38

    .line 104
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    :cond_38
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .registers 1

    .line 90
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;
    .registers 1

    .line 98
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    return-object v0
.end method


# virtual methods
.method public addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    .line 349
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_9

    .line 350
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 7

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FOD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_f4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, HW_LS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    if-eqz v0, :cond_f4

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, B : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmMaxBrightness(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, N : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmNits(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, C : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmBrightnessColor(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, DT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmDisplayPanelType(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmMaskClientList(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Optical, M : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b7

    .line 375
    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, Calibrated time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalCalibrationTime(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f4
    return-void
.end method

.method public getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 10

    const-string v0, "FingerprintService"

    .line 267
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 268
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v2, :cond_c

    return-object v1

    :cond_c
    :try_start_c
    const-string/jumbo v2, "window"

    .line 272
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-nez p3, :cond_23

    .line 275
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 276
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_23
    if-gez p2, :cond_2d

    .line 282
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    .line 286
    :cond_2d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41680000    # 14.5f

    const/4 v3, 0x5

    .line 288
    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 289
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 290
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v3, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 291
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {v3, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p1, v2

    .line 294
    div-int/lit8 v2, p1, 0x2

    float-to-int v3, v5

    sub-int/2addr v2, v3

    float-to-int v3, v4

    float-to-int p0, p0

    const/4 v4, 0x2

    .line 295
    div-int/2addr p0, v4

    add-int/2addr v3, p0

    div-int/lit8 p0, p1, 0x2

    add-int/2addr v3, p0

    if-eqz p2, :cond_a2

    const/4 p0, 0x1

    if-eq p2, p0, :cond_90

    if-eq p2, v4, :cond_81

    const/4 p0, 0x3

    if-eq p2, p0, :cond_72

    goto :goto_b3

    .line 317
    :cond_72
    iput v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p1

    .line 318
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 319
    iget p0, p3, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v4

    sub-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 320
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_b3

    .line 311
    :cond_81
    iget p0, p3, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v4

    add-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    .line 312
    iput p0, v1, Landroid/graphics/Rect;->left:I

    .line 313
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    .line 314
    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_b3

    .line 305
    :cond_90
    iget p0, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    .line 306
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 307
    iget p0, p3, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v4

    add-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 308
    iput p0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_b3

    .line 299
    :cond_a2
    iget p0, p3, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v4

    sub-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    .line 300
    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 301
    iget p0, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    .line 302
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 323
    :goto_b3
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_f1

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFodSensorAreaRect: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d7} :catch_d8

    goto :goto_f1

    :catch_d8
    move-exception p0

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    :goto_f1
    return-object v1
.end method

.method public getFodSensorAreaRectForKeyguard(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 9

    const-string v0, "getFodSensorAreaRectForKeyguard: "

    const-string v1, "FingerprintService"

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2

    :try_start_a
    const-string/jumbo v3, "window"

    .line 221
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 224
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/high16 v6, 0x41680000    # 14.5f

    .line 225
    invoke-static {v5, v6, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v4, v6

    const/4 v6, 0x2

    div-int/2addr v4, v6

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 228
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 227
    invoke-static {v5, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v4, p0

    .line 230
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_8f

    const/4 p1, 0x1

    if-eq p0, p1, :cond_7a

    if-eq p0, v6, :cond_65

    const/4 p1, 0x3

    if-eq p0, p1, :cond_50

    goto :goto_bb

    .line 250
    :cond_50
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 251
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 252
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 253
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_bb

    .line 244
    :cond_65
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 245
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 246
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 247
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_bb

    .line 238
    :cond_7a
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 239
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 240
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_bb

    .line 232
    :cond_8f
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 233
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 234
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 235
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    iput p0, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a3} :catch_a4

    goto :goto_bb

    :catch_a4
    move-exception p0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_bb
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_d5

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    return-object v2
.end method

.method public getInDisplaySensorArea()Landroid/os/Bundle;
    .registers 2

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 165
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 166
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 167
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 168
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 169
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 170
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sem_area"

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_54

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmMaxBrightness(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)F

    move-result v0

    const-string v1, "brightness"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmNits(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)I

    move-result v0

    int-to-float v0, v0

    const-string/jumbo v1, "lightColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 175
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->-$$Nest$fgetmBrightnessColor(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "nits"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    return-object p1
.end method

.method public final getOpticalCalibrationTime(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1f

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 384
    invoke-interface {p1, v1, v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p1

    if-lez p1, :cond_1f

    .line 387
    new-instance p0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 391
    :cond_1f
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSensorAreaMarginFromBottomForFod(Landroid/content/Context;)I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    const-string/jumbo v0, "window"

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 335
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 336
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 337
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSensorIconRandomPos(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    if-nez v0, :cond_b

    .line 342
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    .line 344
    :cond_b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mBurnInHelper:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->-$$Nest$mgetNextPosition(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onBootActivityManagerReady(Landroid/content/Context;)V
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->readSensorPosInfo()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->setFodRect(Landroid/content/Context;)V

    return-void
.end method

.method public onBootThirdPartyAppsCanStart(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3

    .line 114
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_b

    .line 115
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->initialize(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public readSensorPosInfo()V
    .registers 13

    const-string/jumbo v0, "readSensorConfig: "

    const-string v1, "FingerprintService"

    const-string v2, ", "

    .line 131
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/fingerprint/fingerprint/position"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v3

    if-eqz v3, :cond_ac

    .line 135
    :try_start_14
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\,"

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 138
    array-length v4, v3

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-lt v4, v11, :cond_4a

    .line 139
    aget-object v4, v3, v10

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 140
    aget-object v4, v3, v9

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 141
    aget-object v4, v3, v8

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 142
    aget-object v4, v3, v7

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 143
    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 144
    aget-object v4, v3, v5

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 145
    aget-object v4, v3, v11

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 147
    :cond_4a
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    if-eqz p0, :cond_ac

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v8

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v7

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v10

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v9

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v6

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v11

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_94} :catch_95

    goto :goto_ac

    :catch_95
    move-exception p0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    :goto_ac
    return-void
.end method

.method public removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    .line 356
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    if-eqz v0, :cond_9

    .line 357
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setFodRect(Landroid/content/Context;)V
    .registers 16

    .line 181
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 183
    :try_start_5
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 184
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 187
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 188
    invoke-interface {v2, v3, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 190
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCutoutNotchHidden(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 191
    iget p1, v0, Landroid/graphics/Point;->y:I

    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 194
    :cond_2f
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget v4, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fa42850a0000000L    # 0.03937007859349251

    mul-double/2addr v2, v4

    .line 197
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget v8, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 198
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget v10, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v4

    .line 199
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iget p0, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    float-to-double v12, p0

    mul-double/2addr v10, v12

    mul-double/2addr v10, v4

    double-to-int p0, v2

    .line 202
    div-int/lit8 v1, p0, 0x2

    double-to-int v2, v8

    sub-int/2addr v1, v2

    double-to-int v2, v6

    double-to-int v3, v10

    .line 203
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, p0, 0x2

    add-int/2addr v2, v3

    .line 206
    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p0

    .line 207
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 208
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    .line 209
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 211
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodRect(Landroid/graphics/Rect;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8b} :catch_8c

    goto :goto_94

    :catch_8c
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, " setFodRect: "

    .line 214
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_94
    return-void
.end method

.method public setHwLightMode(Ljava/lang/String;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mLatestHwLightMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/fp_green_circle"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 123
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHwLightMode: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_36
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mLatestHwLightMode:Ljava/lang/String;

    :cond_38
    return-void
.end method
