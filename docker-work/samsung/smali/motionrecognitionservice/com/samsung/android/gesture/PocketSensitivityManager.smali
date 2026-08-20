.class public Lcom/samsung/android/gesture/PocketSensitivityManager;
.super Ljava/lang/Object;
.source "PocketSensitivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    }
.end annotation


# static fields
.field public static final SENSITIVITY_LIGHT:I = 0x4

.field public static final SENSITIVITY_NONE:I = 0x0

.field public static final SENSITIVITY_POSITION_BAR:I = 0x1

.field public static final SENSITIVITY_POSITION_DUAL_FLIP:I = 0x5

.field public static final SENSITIVITY_POSITION_FLIP:I = 0x2

.field public static final SENSITIVITY_POSITION_FOLD:I = 0x3

.field public static SENSITIVITY_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static mFeatureLevel:I

.field public static mSensitivityFeatureLevel:I

.field public static mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager;

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager;


# instance fields
.field private dualFlipEnabled:Z

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private mIsInitialized:Z

.field private mIsPocketPosSensorReceived:Z

.field private mIsRunningPocketPosSensor:Z

.field private mPocketPosSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field public sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

.field private vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;


# direct methods
.method static bridge synthetic -$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;Lcom/samsung/android/gesture/VirtualPocketPosData;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    .line 25
    const-class v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mFeatureLevel:I

    .line 34
    sput v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    .line 37
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 38
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 39
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 40
    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 48
    sget-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    sput-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 52
    sget-object v1, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SENSITIVITY_NONE"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_BAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_FOLD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_LIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSITIVITY_POSITION_DUSL_FLIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    .line 29
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketPosData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketPosData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 197
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketSensitivityManager$1;-><init>(Lcom/samsung/android/gesture/PocketSensitivityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketSensitivityManager;
    .registers 1

    .line 61
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 64
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pocketSensitivityManager:Lcom/samsung/android/gesture/PocketSensitivityManager;

    return-object v0
.end method


# virtual methods
.method public checkSensitivityType(Landroid/content/Context;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureLevel"    # I
    .param p3, "sensitivityFeatureLevel"    # I

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 101
    :cond_6
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 102
    sput p2, Lcom/samsung/android/gesture/PocketSensitivityManager;->mFeatureLevel:I

    .line 103
    sput p3, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    .line 105
    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq p3, v1, :cond_1f

    const/4 v4, 0x2

    if-eq p3, v4, :cond_1f

    if-eq p3, v3, :cond_1f

    if-ne p3, v2, :cond_28

    .line 107
    :cond_1f
    const v4, 0x100a2

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    .line 110
    :cond_28
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v1, :cond_33

    if-eq v0, v3, :cond_33

    const/4 v3, 0x4

    if-eq v0, v3, :cond_33

    if-ne v0, v2, :cond_3d

    .line 112
    :cond_33
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 115
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_48

    .line 116
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get Position Mode Sensor"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_48
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsInitialized:Z

    .line 119
    return-void
.end method

.method public disableDualFlipMode()V
    .registers 5

    .line 189
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Disable DualFlip Mode"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 192
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 194
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 195
    return-void
.end method

.method public enableDualFlipMode()V
    .registers 5

    .line 180
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable DualFlip Mode"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    .line 183
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 185
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 186
    return-void
.end method

.method public enablePocketPositionSensor(I)V
    .registers 8
    .param p1, "LIDState"    # I

    .line 131
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ne v0, v4, :cond_f

    .line 132
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_1f

    .line 134
    :cond_f
    const/4 v5, 0x2

    if-eq v0, v5, :cond_18

    const/4 v5, 0x3

    if-eq v0, v5, :cond_18

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1f

    .line 135
    :cond_18
    if-ne p1, v4, :cond_1f

    .line 136
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 138
    :cond_1f
    :goto_1f
    return-void
.end method

.method public getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;
    .registers 2

    .line 248
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    return-object v0
.end method

.method public getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    return-object v0
.end method

.method public initVirtualPocketPosData()V
    .registers 2

    .line 236
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketPosData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketPosData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->vpPosData:Lcom/samsung/android/gesture/VirtualPocketPosData;

    .line 237
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 70
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 71
    if-nez v0, :cond_10

    .line 72
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 77
    :cond_10
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 78
    if-nez v0, :cond_20

    .line 79
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 84
    :cond_20
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 85
    if-nez v0, :cond_30

    .line 86
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 91
    :cond_30
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 92
    if-nez v0, :cond_40

    .line 93
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketMotionManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_40
    return-void
.end method

.method public isDualFlipEnabled()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->dualFlipEnabled:Z

    return v0
.end method

.method public isPocketPosSensorReceived()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    return v0
.end method

.method public isRunningPocketPosSensor()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    return v0
.end method

.method public registerPocketPositionSensor()V
    .registers 6

    .line 145
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 146
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "This is FactoryBinary"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 150
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_28

    iget-boolean v2, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    if-nez v2, :cond_28

    .line 151
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 153
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "register pocket position sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_28
    return-void
.end method

.method public setLightSensitivity(I)V
    .registers 6
    .param p1, "mlux"    # I

    .line 167
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v0

    const-wide/16 v1, 0x0

    if-gt p1, v0, :cond_29

    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->getATStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_29

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-eq v0, v3, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne v0, v3, :cond_40

    .line 169
    :cond_21
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x11

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_40

    .line 173
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-eq v0, v3, :cond_39

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getSensitivityState()Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne v0, v3, :cond_40

    .line 174
    :cond_39
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 177
    :cond_40
    :goto_40
    return-void
.end method

.method public setPocketPosSensorReceived(Z)V
    .registers 2
    .param p1, "isPocketPosSensorReceived"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsPocketPosSensorReceived:Z

    return-void
.end method

.method public setSensitivityMode(I)V
    .registers 4
    .param p1, "en"    # I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setLowSensitivityModeEnable(I)I

    goto :goto_f

    .line 126
    :cond_8
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "mInputDeviceManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_f
    return-void
.end method

.method public setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V
    .registers 3
    .param p1, "state"    # Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 240
    sput-object p1, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityState:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    .line 241
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    if-ne p1, v0, :cond_b

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityMode(I)V

    goto :goto_f

    .line 244
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityMode(I)V

    .line 246
    :goto_f
    return-void
.end method

.method public unregisterPocketPositionSensor()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mPocketPosSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1a

    .line 159
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->sensorPocketPosEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mIsRunningPocketPosSensor:Z

    .line 161
    :cond_13
    sget-object v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister pocket position sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->initVirtualPocketPosData()V

    .line 164
    return-void
.end method
