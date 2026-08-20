.class public Lcom/samsung/android/gesture/PocketProximityManager;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"


# static fields
.field public static final DETECT_IN:I = 0x1

.field public static final DETECT_OUT:I = 0x2

.field public static final DETECT_TILT:I = 0x3

.field public static final DETECT_UNKNOWN:I = 0x0

.field private static final POCKET_RECOGNITION_TIME:J = 0xbb8L

.field public static final PROX_CHECK_REASON_DEBUG:I = 0x7

.field public static final PROX_CHECK_REASON_DURATION:I = 0x1

.field public static final PROX_CHECK_REASON_LIGHT:I = 0x3

.field public static final PROX_CHECK_REASON_LIGHT_HIGH:I = 0x4

.field public static final PROX_CHECK_REASON_MOTION:I = 0x2

.field public static final PROX_CHECK_REASON_NOMOVE:I = 0x5

.field public static final PROX_CHECK_REASON_UNKNOWN:I = 0x0

.field public static final PROX_FOLDABLE_ALERT:I = 0x137

.field public static final PROX_FOLDABLE_DUAL_FLIP:I = 0x14c

.field public static final PROX_FOLDABLE_FLIP:I = 0x138

.field public static final PROX_FOLDABLE_FOLD:I = 0x14b

.field public static final PROX_SUB_DEFAULT:I = 0x0

.field public static final PROX_SUB_LP_MOTION:I = 0x33

.field public static final PROX_SUB_NP_CHECK_SEVERAL_TIME:I = 0xb

.field public static PROX_SUB_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROX_SUB_VP_POCKET_ALERT:I = 0x20

.field public static final PROX_SUB_VP_POCKET_HUB:I = 0x21

.field public static final PROX_SUB_VP_POPUP_ALERT:I = 0x1f

.field public static PROX_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROX_TYPE_HOVER_POCKET:I = 0x6

.field public static final PROX_TYPE_LITE_POCKET:I = 0x5

.field public static final PROX_TYPE_NORMAL:I = 0x1

.field public static final PROX_TYPE_SYSFS_POCKET:I = 0x4

.field public static final PROX_TYPE_UNDER_DISPLAY:I = 0x2

.field public static final PROX_TYPE_VIRTUAL_POCKET:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field public static mFeatureLevel:I

.field private static pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager;

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager;

.field private static pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

.field private static ppc:Lcom/samsung/android/gesture/PocketProximityCluster;


# instance fields
.field private isInitialized:Z

.field private isPocketSensorReceived:Z

.field private isRunningAlertProxSensor:Z

.field private isRunningPhysicalProxySensor:Z

.field private isRunningPhysicalProxySensorForA71_5g:Z

.field private isRunningPocketSensor:Z

.field private isRunningTouchSensor:Z

.field private isSettingEnabled:Z

.field private lightLimitByCallmin:Z

.field private luxRawData:I

.field private mAlertProxCnt:I

.field private mAlertProxOpenCnt:I

.field private mAlertProxRecogFlag:Z

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private final mLockProxInt:Ljava/lang/Object;

.field private mPrevAlertProx:I

.field private physicalProx:F

.field private physicalProxSensor:Landroid/hardware/Sensor;

.field private pocketSensor:Landroid/hardware/Sensor;

.field private proxCurType:I

.field private proxDelayTime:J

.field private proxLiteState:I

.field private proxSensor:Landroid/hardware/Sensor;

.field private proxSensorType:I

.field private proxState:I

.field private proxSubType:I

.field public sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field public sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

.field public sensorPocketEventListener:Landroid/hardware/SensorEventListener;

.field private vpData:Lcom/samsung/android/gesture/VirtualPocketData;

.field private wakeUpReason:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisRunningAlertProxSensor(Lcom/samsung/android/gesture/PocketProximityManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunningPhysicalProxySensorForA71_5g(Lcom/samsung/android/gesture/PocketProximityManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorManager(Lcom/samsung/android/gesture/PocketProximityManager;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvpData(Lcom/samsung/android/gesture/PocketProximityManager;)Lcom/samsung/android/gesture/VirtualPocketData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwakeUpReason(Lcom/samsung/android/gesture/PocketProximityManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxOpenCnt(Lcom/samsung/android/gesture/PocketProximityManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAlertProxRecogFlag(Lcom/samsung/android/gesture/PocketProximityManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvpData(Lcom/samsung/android/gesture/PocketProximityManager;Lcom/samsung/android/gesture/VirtualPocketData;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetppc()Lcom/samsung/android/gesture/PocketProximityCluster;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 30
    const-class v0, Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketProximityManager;->mFeatureLevel:I

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    .line 119
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_NORMAL"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_UNDER_DISPLAY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_VIRTUAL_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_SYSFS_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_LITE_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PROX_TYPE_HOVER_POCKET"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "PROX_SUB_DEFAULT"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_NP_CHECK_SEVERAL_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POPUP_ALERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POCKET_ALERT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_VP_POCKET_HUB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROX_SUB_LP_MOTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 77
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 78
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 80
    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    .line 91
    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    .line 92
    const/16 v1, 0x21

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isSettingEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 291
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$1;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    .line 352
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$2;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    .line 515
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$3;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    .line 680
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$4;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    .line 731
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$5;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    .line 765
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$6;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    .line 807
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/PocketProximityManager$7;-><init>(Lcom/samsung/android/gesture/PocketProximityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketProximityManager;
    .registers 1

    .line 170
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    if-nez v0, :cond_b

    .line 171
    new-instance v0, Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketProximityManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 172
    :cond_b
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketProximityManager:Lcom/samsung/android/gesture/PocketProximityManager;

    return-object v0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .registers 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 847
    sput-object p0, Lcom/samsung/android/gesture/PocketProximityManager;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alertProxAvailable()Z
    .registers 4

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "isAvailable":Z
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_12

    .line 584
    :cond_11
    const/4 v0, 0x1

    .line 586
    :cond_12
    return v0
.end method

.method public checkProximityType(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureLevel"    # I

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 178
    :cond_6
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 179
    const v2, 0x1004a

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 180
    const-string v0, "SemInputDeviceManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 182
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "strModel":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sput p2, Lcom/samsung/android/gesture/PocketProximityManager;->mFeatureLevel:I

    .line 186
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    if-eqz v3, :cond_8d

    .line 187
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 189
    const-string v3, "PROX_TYPE_HOVER_POCKET"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, -0x2

    const-string v6, "screen_off_pocket"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_63

    move v3, v1

    goto :goto_64

    :cond_63
    move v3, v4

    :goto_64
    iput-boolean v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isSettingEnabled:Z

    .line 193
    if-ne v3, v1, :cond_78

    .line 194
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    move-result v3

    if-ne v3, v1, :cond_73

    .line 195
    const-string v3, "Tsp : Write 1"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_73
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerHoverSensor()V

    goto/16 :goto_17d

    .line 199
    :cond_78
    const-string v3, "PocketModeSetting is off "

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    move-result v3

    if-ne v3, v1, :cond_88

    .line 201
    const-string v3, "Tsp : Write 0"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_88
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterHoverSensor()V

    goto/16 :goto_17d

    .line 205
    :cond_8d
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10038

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 206
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v6, 0x10045

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    .line 207
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_d6

    .line 208
    const/16 v3, 0xb

    if-ne p2, v3, :cond_bf

    .line 209
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10035

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 210
    const-string v4, "TYPE_PROXIMITY_POCKET"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_c9

    .line 214
    :cond_bf
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 216
    :goto_c9
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 218
    const-string v3, "PROX_TYPE_NORMAL"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17d

    .line 219
    :cond_d6
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_fc

    .line 220
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 221
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 222
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 223
    const-string v3, "PROX_TYPE_SYSFS_POCKET"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    goto/16 :goto_17d

    .line 225
    :cond_fc
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_134

    .line 226
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 227
    invoke-virtual {p0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 228
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x1002e

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 229
    const-string v3, "PROX_TYPE_VIRTUAL_POCKET"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v2, 0x1f

    if-eq p2, v2, :cond_130

    const/16 v3, 0x137

    if-ne p2, v3, :cond_120

    goto :goto_130

    .line 233
    :cond_120
    const/16 v2, 0x20

    if-ne p2, v2, :cond_128

    .line 234
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_17d

    .line 235
    :cond_128
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_17d

    .line 236
    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_17d

    .line 232
    :cond_130
    :goto_130
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_17d

    .line 239
    :cond_134
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const v6, 0x10048

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_14b

    .line 241
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    iput-object v6, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    .line 242
    :cond_14b
    iget-object v6, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_171

    .line 243
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 244
    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 245
    const-string v6, "PROX_TYPE_LITE_POCKET"

    invoke-static {v2, v6}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    .line 247
    const/16 v2, 0x33

    if-ne p2, v2, :cond_17d

    .line 248
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSubType(I)V

    goto :goto_17d

    .line 252
    :cond_171
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 253
    invoke-virtual {p0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxSensorType(I)V

    .line 254
    const-string v4, "PROX_TYPE_UNDER_DISPLAY"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_17d
    :goto_17d
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isInitialized:Z

    .line 260
    return-void
.end method

.method public getLuxRawData()I
    .registers 2

    .line 860
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return v0
.end method

.method public getPhysicalProx()F
    .registers 2

    .line 852
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return v0
.end method

.method public getProxCurType()I
    .registers 2

    .line 864
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    return v0
.end method

.method public getProxDelayTime()J
    .registers 3

    .line 873
    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxDelayTime:J

    return-wide v0
.end method

.method public getProxLiteState()I
    .registers 2

    .line 850
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxLiteState:I

    return v0
.end method

.method public getProxSensorType()I
    .registers 2

    .line 869
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    return v0
.end method

.method public getProxState()I
    .registers 2

    .line 848
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    return v0
.end method

.method public getProxSubType()I
    .registers 2

    .line 871
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    return v0
.end method

.method public getVpData()Lcom/samsung/android/gesture/VirtualPocketData;
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-object v0
.end method

.method public getWakeUpReason()I
    .registers 2

    .line 862
    iget v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return v0
.end method

.method public initVirtualPocketData()V
    .registers 2

    .line 488
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    .line 490
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 136
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 137
    if-nez v0, :cond_10

    .line 138
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_10
    invoke-static {}, Lcom/samsung/android/gesture/PocketBigDataManager;->getInstance()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 143
    if-nez v0, :cond_20

    .line 144
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketBigDataManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    :cond_20
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 149
    if-nez v0, :cond_30

    .line 150
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 154
    :cond_30
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 155
    if-nez v0, :cond_40

    .line 156
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketMotionManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 160
    :cond_40
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityCluster;->getInstance()Lcom/samsung/android/gesture/PocketProximityCluster;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    .line 161
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    if-nez v0, :cond_52

    .line 162
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityCluster"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_52
    new-instance v0, Lcom/samsung/android/gesture/VirtualPocketData;

    invoke-direct {v0}, Lcom/samsung/android/gesture/VirtualPocketData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    .line 167
    return-void
.end method

.method public isLightLimitByCallmin()Z
    .registers 2

    .line 858
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    return v0
.end method

.method public isPocketSensorReceived()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    return v0
.end method

.method public isRunningAlertProxSensor()Z
    .registers 2

    .line 879
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return v0
.end method

.method public isRunningPhysicalProxy()Z
    .registers 2

    .line 875
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    return v0
.end method

.method public isRunningPocketSensor()Z
    .registers 2

    .line 877
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    return v0
.end method

.method public isRunningTouchSensor()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    return v0
.end method

.method public readProxInt()I
    .registers 7

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, -0x1

    .line 595
    .local v1, "data":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v2

    .line 598
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/sensors/proximity_sensor/pocket_prox"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_10
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    move-object v0, v3

    .line 601
    goto :goto_1a

    .line 621
    :catchall_e
    move-exception v3

    goto :goto_5d

    .line 610
    :catch_10
    move-exception v3

    goto :goto_47

    .line 599
    :catch_12
    move-exception v3

    .line 600
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_13
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Read"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1a
    if-nez v0, :cond_24

    .line 603
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 605
    :cond_24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    move v1, v3

    .line 606
    add-int/lit8 v1, v1, -0x30

    .line 607
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read proximity data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_46} :catch_10
    .catchall {:try_start_13 .. :try_end_46} :catchall_e

    .line 620
    :goto_46
    goto :goto_5b

    .line 611
    .local v3, "e":Ljava/io/IOException;
    :goto_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_e

    .line 612
    if-eqz v0, :cond_54

    .line 614
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_e

    .line 617
    goto :goto_54

    .line 615
    :catch_50
    move-exception v4

    .line 616
    .local v4, "err":Ljava/io/IOException;
    :try_start_51
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 619
    .end local v4    # "err":Ljava/io/IOException;
    :cond_54
    :goto_54
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File read fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5b
    monitor-exit v2

    .line 622
    return v1

    .line 621
    :goto_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_e

    throw v3
.end method

.method public registerAlertProxSensor()V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 498
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 499
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 501
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 502
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register Alert prox sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public registerHoverSensor()V
    .registers 5

    .line 796
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_19

    .line 797
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 798
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register proximity hover sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_19
    return-void
.end method

.method public registerLiteProxSensor()V
    .registers 5

    .line 668
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 669
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setLuxRawData(I)V

    .line 670
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register Lite proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public registerNormalProxSensor()V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 281
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register normal proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method registerPhysicalProximitySensor()V
    .registers 5

    .line 716
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1a

    .line 717
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 718
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register physical proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 721
    :cond_1a
    return-void
.end method

.method registerPhysicalProximitySensorForA71_5g()V
    .registers 5

    .line 750
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProxSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1a

    .line 751
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 752
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register physical proximity sensor(A71_5g)"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 755
    :cond_1a
    return-void
.end method

.method public registerPocketProxySensor()V
    .registers 5

    .line 322
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    return-void

    .line 326
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    if-nez v1, :cond_23

    .line 327
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 329
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "register pocket sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_23
    return-void
.end method

.method public resetPocketProxyCluster()V
    .registers 3

    .line 348
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "resetPocketProxyCluster"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->ppc:Lcom/samsung/android/gesture/PocketProximityCluster;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityCluster;->resetCluster()V

    .line 350
    return-void
.end method

.method public resetPocketProxySensor()V
    .registers 1

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPocketProxySensor()V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPocketProxySensor()V

    .line 345
    return-void
.end method

.method public setLightLimitByCallmin(Z)V
    .registers 2
    .param p1, "lightLimitByCallmin"    # Z

    .line 859
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->lightLimitByCallmin:Z

    return-void
.end method

.method public setLuxRawData(I)V
    .registers 2
    .param p1, "luxRawData"    # I

    .line 861
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->luxRawData:I

    return-void
.end method

.method public setPhysicalProx(F)V
    .registers 2
    .param p1, "physicalProx"    # F

    .line 853
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->physicalProx:F

    return-void
.end method

.method public setPocketSensorReceived(Z)V
    .registers 2
    .param p1, "isPocketSensorReceived"    # Z

    .line 857
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isPocketSensorReceived:Z

    return-void
.end method

.method public setProxCurType(I)V
    .registers 6
    .param p1, "proxCurType"    # I

    .line 866
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxCurType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxCurType:I

    .line 868
    return-void
.end method

.method public setProxDelayTime(J)V
    .registers 3
    .param p1, "proxDelayTime"    # J

    .line 874
    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxDelayTime:J

    return-void
.end method

.method public setProxLiteState(I)V
    .registers 2
    .param p1, "proxLiteState"    # I

    .line 851
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxLiteState:I

    return-void
.end method

.method public setProxSensorType(I)V
    .registers 2
    .param p1, "proxSensorType"    # I

    .line 870
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSensorType:I

    return-void
.end method

.method public setProxState(I)V
    .registers 2
    .param p1, "proxState"    # I

    .line 849
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxState:I

    return-void
.end method

.method public setProxSubType(I)V
    .registers 2
    .param p1, "proxSubType"    # I

    .line 872
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->proxSubType:I

    return-void
.end method

.method public setRunningAlertProxSensor(Z)V
    .registers 2
    .param p1, "isRunningAlertProxSensor"    # Z

    .line 880
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    return-void
.end method

.method public setRunningPhysicalProxy(Z)V
    .registers 2
    .param p1, "isRunningPhysicalProxySensor"    # Z

    .line 876
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    return-void
.end method

.method public setRunningPocketSensor(Z)V
    .registers 2
    .param p1, "isRunningPocketSensor"    # Z

    .line 878
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    return-void
.end method

.method public setRunningTouchSensor(Z)V
    .registers 2
    .param p1, "isRunningTouchSensor"    # Z

    .line 882
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    return-void
.end method

.method public setStateIn()V
    .registers 3

    .line 263
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "setStateIn()"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 266
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 267
    return-void
.end method

.method public setStateOut()V
    .registers 3

    .line 270
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "setStateOut()"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 273
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 274
    return-void
.end method

.method public setVpData(Lcom/samsung/android/gesture/VirtualPocketData;)V
    .registers 2
    .param p1, "vpData"    # Lcom/samsung/android/gesture/VirtualPocketData;

    .line 855
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->vpData:Lcom/samsung/android/gesture/VirtualPocketData;

    return-void
.end method

.method public setWakeUpReason(I)V
    .registers 2
    .param p1, "wakeUpReason"    # I

    .line 863
    iput p1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->wakeUpReason:I

    return-void
.end method

.method startCheckingTouchMonitoring()V
    .registers 5

    .line 313
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x6

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 314
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor:Z

    .line 315
    :cond_f
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "start TouchMonitoring"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public unregisterAlertProxSensor()V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorAlertProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor:Z

    .line 508
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mPrevAlertProx:I

    .line 509
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxRecogFlag:Z

    .line 510
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxCnt:I

    .line 511
    iput v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mAlertProxOpenCnt:I

    .line 512
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister Alert prox sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public unregisterHoverSensor()V
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorHoverProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 804
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister proximity hover sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public unregisterLiteProxSensor()V
    .registers 3

    .line 674
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_10

    .line 675
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 676
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister Lite proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_10
    return-void
.end method

.method public unregisterNormalProxSensor()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorNormalProxEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_10

    .line 286
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 287
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister normal proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_10
    return-void
.end method

.method unregisterPhysicalProximitySensor()V
    .registers 3

    .line 724
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 725
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 726
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister physical proximity sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensor:Z

    .line 729
    :cond_16
    return-void
.end method

.method unregisterPhysicalProximitySensorForA71_5g()V
    .registers 3

    .line 758
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 759
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPhysicalProxForA71_5gEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 760
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister physical proximity sensor(A71_5g)"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxySensorForA71_5g:Z

    .line 763
    :cond_16
    return-void
.end method

.method public unregisterPocketProxySensor()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->pocketSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1a

    .line 335
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->sensorPocketEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 336
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor:Z

    .line 337
    :cond_13
    sget-object v0, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister pocket sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketProximityManager;->initVirtualPocketData()V

    .line 340
    return-void
.end method

.method public writeProxInt(I)I
    .registers 8
    .param p1, "en"    # I

    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    const/4 v2, 0x0

    .line 631
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sensors/proximity_sensor/pocket_prox"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_15
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    move-object v2, v3

    .line 635
    goto :goto_1f

    .line 660
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_13
    move-exception v2

    goto :goto_62

    .line 649
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_15
    move-exception v3

    goto :goto_4c

    .line 632
    :catch_17
    move-exception v3

    .line 633
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_18
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Write"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1f
    if-nez v2, :cond_29

    .line 637
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 639
    :cond_29
    if-nez p1, :cond_38

    .line 640
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 641
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Write proximity data : 0"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 642
    :cond_38
    const/4 v3, 0x1

    if-ne p1, v3, :cond_47

    .line 643
    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 644
    sget-object v3, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v4, "Write proximity data : 1"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_47
    :goto_47
    const/4 v0, 0x1

    .line 647
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4b} :catch_15
    .catchall {:try_start_18 .. :try_end_4b} :catchall_13

    .line 659
    :goto_4b
    goto :goto_60

    .line 650
    .local v3, "e":Ljava/io/IOException;
    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_13

    .line 651
    if-eqz v2, :cond_59

    .line 653
    :try_start_51
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_13

    .line 656
    goto :goto_59

    .line 654
    :catch_55
    move-exception v4

    .line 655
    .local v4, "err":Ljava/io/IOException;
    :try_start_56
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 658
    .end local v4    # "err":Ljava/io/IOException;
    :cond_59
    :goto_59
    sget-object v4, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v5, "File write fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_60
    monitor-exit v1

    .line 661
    return v0

    .line 660
    :goto_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_13

    throw v2
.end method

.method public writeTspProxInt(I)I
    .registers 6
    .param p1, "en"    # I

    .line 831
    const/4 v0, -0x1

    .line 832
    .local v0, "res":I
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 833
    return v0

    .line 836
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v1, :cond_2b

    .line 837
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setPocketModeEnable(I)I

    .line 838
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write tsp proximity data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v0, 0x1

    goto :goto_32

    .line 842
    :cond_2b
    sget-object v1, Lcom/samsung/android/gesture/PocketProximityManager;->TAG:Ljava/lang/String;

    const-string v2, "InputDeviceManager null"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_32
    return v0
.end method
