.class public Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;
.super Ljava/lang/Object;
.source "CameraLightSensorPrivacyController.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraLightSensorPrivacyController"

.field private static lastSavedBrightness:I

.field private static sInstance:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;


# instance fields
.field private mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field private final mContext:Landroid/content/Context;

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetlastSavedBrightness()I
    .registers 1

    sget v0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->lastSavedBrightness:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputlastSavedBrightness(I)V
    .registers 1

    sput p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->lastSavedBrightness:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->lastSavedBrightness:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 37
    sget-object v0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->sInstance:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    if-nez v0, :cond_14

    .line 38
    sput-object p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->sInstance:Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->init(Landroid/content/Context;)V

    .line 41
    :cond_14
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    if-nez v0, :cond_11

    .line 45
    new-instance v0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController$1;-><init>(Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mCameraAccessListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 66
    const/4 v1, 0x2

    .line 67
    .local v1, "camera":I
    iget-object v2, p0, Lcom/samsung/android/gesture/CameraLightSensorPrivacyController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 69
    .end local v1    # "camera":I
    :cond_11
    return-void
.end method
