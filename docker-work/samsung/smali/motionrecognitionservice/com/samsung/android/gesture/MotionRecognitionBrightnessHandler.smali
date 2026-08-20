.class public Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
.super Ljava/lang/Object;
.source "MotionRecognitionBrightnessHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessHandler"


# instance fields
.field private mBootCompleteCalled:Z

.field private mBrightness:F

.field private mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBrightness(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBrightness(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBrightness:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBrightness:F

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBootCompleteCalled:Z

    .line 33
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 28
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBootCompleteCalled:Z

    .line 31
    return-void
.end method


# virtual methods
.method public startWritingBrightness()V
    .registers 8

    .line 56
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "BrightnessHandler"

    if-nez v0, :cond_c

    .line 57
    const-string v0, "not support Light Sensor "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 60
    :cond_c
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1a

    .line 61
    const-string v0, "This version doesn\'t support brightness handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_4b

    .line 66
    const-string v0, "pmstemp: mDisplayManagerInternal : null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pmstemp: mDisplayManagerInternal : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_af

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBootCompleteCalled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5a

    .line 74
    const-string v0, "mBootCompleteCalled is true "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_5a
    const-string v0, "pmstemp: mDisplayManagerInternal: register  "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mBootCompleteCalled:Z

    .line 81
    new-array v0, v2, [F

    .line 82
    .local v0, "bright":[F
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result v2

    .line 83
    .local v2, "brightness":F
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 85
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensor:Landroid/hardware/Sensor;

    const/high16 v5, 0x10000000

    invoke-static {v3, v5, v0}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 86
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inject initial brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v4, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tempBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_af

    .line 88
    const-string v4, "initial brightness injectSensorData failed "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "bright":[F
    .end local v2    # "brightness":F
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_af
    return-void
.end method
