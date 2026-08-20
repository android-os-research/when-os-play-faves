.class public Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
.super Ljava/lang/Object;
.source "HdrDisplayNitMapper.java"


# static fields
.field private static final CUSTOM_HDR10:I = 0x1

.field private static final CUSTOM_HDR10PLUS:I = 0x2

.field private static final HDR_EXYNOS_V0:I = 0x2

.field private static final HDR_LUMINANCE:I = 0x1

.field private static final HDR_MAXRGB:I = 0x0

.field private static final HDR_SMXXXX_V0:I = 0x3

.field private static final HDR_SMXXXX_V1:I = 0x4

.field private static final LIGHT_STATE_INIT:I = 0x0

.field private static final LIGHT_STATE_OFF:I = -0x1

.field private static final LIGHT_STATE_RUN:I = 0x1

.field private static final LIGHT_STATE_STABLE:I = 0x2

.field private static final LIST_ADAPTIVE_TM:[Ljava/lang/String;

.field private static final LIST_CUSTOM_HDR10:[Ljava/lang/String;

.field private static final LIST_CUSTOM_HDR10PLUS:[Ljava/lang/String;

.field private static final LIST_EXYNOS_V0:[Ljava/lang/String;

.field private static final LIST_LUMINANCE:[Ljava/lang/String;

.field private static final LIST_ORIGIN:[Ljava/lang/String;

.field private static final LIST_SMXXXX_V0:[Ljava/lang/String;

.field private static final LIST_SMXXXX_V1:[Ljava/lang/String;

.field private static final MIN_TARGET_NIT:I = 0xc8

.field private static final NUM_HDR_VERSION:I = 0x5

.field private static final ORIGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdrSolution_HdrDisplayNitMapper"


# instance fields
.field private LIGHT_AVERAGE_LENGTH_MS:I

.field private LIGHT_DEC_LIMIT_PER_SEC:F

.field private LIGHT_INC_LIMIT_PER_SEC:F

.field private LIGHT_SAMPLING_INTERVAL_MS:I

.field private LIGHT_SENSOR_RATE_MS:I

.field private LIGHT_UPDATE_PERIOD_MS:I

.field private LIGHT_UPDATE_RATE:F

.field private LOG_TIMER_UPDATE_PERIOD_SEC:I

.field private mAmbTargetRatio:F

.field private mBound0:F

.field private mBound1:F

.field private mBound2:F

.field private mContext:Landroid/content/Context;

.field private mCp:F

.field private mD65Weight:F

.field private mDisableLightSensor:I

.field private mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mLightManagerState:I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorData:F

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLogLevel:I

.field private mPanelNit:F

.field private mPanelNitsArray:[F

.field private mPrevState:Z

.field private mRdr:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSupportRealTimePanelNit:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mZone1:F

.field private mZone2:F


# direct methods
.method static bridge synthetic -$$Nest$fgetLIGHT_AVERAGE_LENGTH_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_DEC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_INC_LIMIT_PER_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_SAMPLING_INTERVAL_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_UPDATE_PERIOD_MS(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLIGHT_UPDATE_RATE(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TIMER_UPDATE_PERIOD_SEC(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound0(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBound2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCp(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRdr(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportRealTimePanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z
    .registers 1

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZone1(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZone2(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAmbTargetRatio(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLightManagerState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;I)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLightSensorData(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I
    .registers 1

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getTargetNit()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .registers 1

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->updateTargetNit()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 41
    const-string v0, "S5E9925"

    const-string v1, "SM8450"

    const-string v2, "SM8475"

    const-string v3, "SM8550"

    const-string v4, "S5E8835"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ADAPTIVE_TM:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_LUMINANCE:[Ljava/lang/String;

    .line 95
    const-string v1, "EXYNOS9820"

    const-string v2, "EXYNOS9825"

    const-string v3, "EXYNOS9830"

    const-string v4, "EXYNOS990"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_EXYNOS_V0:[Ljava/lang/String;

    .line 96
    const-string v1, "SM8150"

    const-string v2, "SM8250"

    const-string v3, "SM7150"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V0:[Ljava/lang/String;

    .line 97
    const-string v1, "SM8350"

    const-string v2, "SM7225"

    const-string v3, "SM7250"

    const-string v4, "SM7325"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V1:[Ljava/lang/String;

    .line 103
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ORIGIN:[Ljava/lang/String;

    .line 104
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10:[Ljava/lang/String;

    .line 105
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10PLUS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    .line 42
    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 45
    new-array v0, v2, [F

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 52
    const/4 v0, 0x0

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 54
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    .line 55
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    .line 56
    const/4 v3, 0x0

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    .line 58
    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    .line 64
    const/4 v3, -0x1

    iput v3, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 66
    const/16 v0, 0xfa

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SENSOR_RATE_MS:I

    .line 67
    const/16 v0, 0x32

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    .line 68
    const/16 v0, 0x64

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    .line 69
    const/16 v0, 0x640

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    .line 70
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    .line 71
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    .line 72
    const v0, 0x3e99999a    # 0.3f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    .line 73
    const/16 v0, 0xa

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    .line 75
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    .line 76
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    .line 77
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    .line 78
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    .line 79
    const v0, 0x3f266666    # 0.65f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    .line 80
    const v0, 0x3f3d70a4    # 0.74f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    .line 81
    const v0, 0x3f2e147b    # 0.68f

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    .line 84
    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    .line 281
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;

    invoke-direct {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    .line 477
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;

    invoke-direct {v0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$3;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 109
    move-object/from16 v4, p1

    iput-object v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    .line 111
    iget v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "debug.hdr.log.service"

    invoke-static {v5, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    .line 113
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 114
    .local v5, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 117
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->isHdr()Z

    move-result v0

    const-string v7, "HdrSolution_HdrDisplayNitMapper"

    if-eqz v0, :cond_c9

    .line 118
    invoke-virtual {v6}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    .line 119
    .local v0, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getDesiredMaxLuminance()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "defaultTargetNit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HdrCapability(True), Default Target Nit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    goto :goto_e1

    .line 122
    .end local v8    # "defaultTargetNit":Ljava/lang/String;
    :cond_c9
    const-string v8, "400"

    .line 123
    .restart local v8    # "defaultTargetNit":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HdrCapability(False), Default Target Nit: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_e1
    const-string v0, "hdr.target_nit"

    invoke-static {v0, v8}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "ro.soc.model"

    const-string v9, "null"

    invoke-static {v0, v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "chipName":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fa

    const-string v10, "ro.vendor.qti.soc_model"

    invoke-static {v10, v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_fa
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_106

    const-string v10, "ro.hardware.chipname"

    invoke-static {v10, v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_106
    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .end local v0    # "chipName":Ljava/lang/String;
    .local v10, "chipName":Ljava/lang/String;
    const-string v0, "debug.hdr.enforce.panel_brt"

    invoke-static {v0, v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "enforcePanelBrightness":Ljava/lang/String;
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1070114

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 135
    .local v12, "backlightArray":[I
    array-length v13, v12

    .line 137
    .local v13, "arrayLen":I
    const/4 v14, 0x1

    if-lez v13, :cond_24f

    .line 138
    add-int/lit8 v0, v13, -0x1

    aget v0, v12, v0

    add-int/lit8 v15, v13, -0x1

    const v3, 0x1070115

    if-ne v0, v15, :cond_14a

    .line 139
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    goto/16 :goto_26d

    .line 141
    :cond_14a
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 142
    .local v3, "panelNitsArray":[F
    add-int/lit8 v0, v13, -0x1

    aget v0, v12, v0

    add-int/lit8 v15, v0, 0x1

    .line 143
    .local v15, "arrayLenNit":I
    new-array v0, v15, [F

    iput-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    .line 145
    aget v16, v3, v2

    aput v16, v0, v2

    .line 146
    const/4 v0, 0x1

    .line 147
    .local v0, "r_idx":I
    const/16 v16, 0x1

    move/from16 v2, v16

    .local v2, "w_idx":I
    :goto_16b
    if-ge v2, v15, :cond_244

    .line 148
    aget v14, v12, v0

    if-ne v14, v2, :cond_182

    .line 149
    iget-object v14, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    aget v17, v3, v0

    aput v17, v14, v2

    .line 150
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    goto :goto_1c0

    .line 152
    :cond_182
    add-int/lit8 v14, v0, -0x1

    aget v14, v12, v14

    .line 153
    .local v14, "p0":I
    aget v4, v12, v0

    .line 154
    .local v4, "p1":I
    if-le v4, v14, :cond_1af

    .line 155
    move-object/from16 v17, v5

    .end local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v17, "displayManager":Landroid/hardware/display/DisplayManager;
    sub-int v5, v4, v2

    .line 156
    .local v5, "w0":I
    move-object/from16 v18, v6

    .end local v6    # "display":Landroid/view/Display;
    .local v18, "display":Landroid/view/Display;
    sub-int v6, v2, v14

    .line 157
    .local v6, "w1":I
    move-object/from16 v19, v8

    .end local v8    # "defaultTargetNit":Ljava/lang/String;
    .local v19, "defaultTargetNit":Ljava/lang/String;
    iget-object v8, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    add-int/lit8 v20, v0, -0x1

    aget v20, v3, v20

    move-object/from16 v21, v9

    int-to-float v9, v5

    mul-float v20, v20, v9

    aget v9, v3, v0

    move/from16 v22, v0

    .end local v0    # "r_idx":I
    .local v22, "r_idx":I
    int-to-float v0, v6

    mul-float/2addr v9, v0

    add-float v20, v20, v9

    sub-int v0, v4, v14

    int-to-float v0, v0

    div-float v20, v20, v0

    aput v20, v8, v2

    .line 158
    .end local v5    # "w0":I
    .end local v6    # "w1":I
    goto :goto_1be

    .line 159
    .end local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v18    # "display":Landroid/view/Display;
    .end local v19    # "defaultTargetNit":Ljava/lang/String;
    .end local v22    # "r_idx":I
    .restart local v0    # "r_idx":I
    .local v5, "displayManager":Landroid/hardware/display/DisplayManager;
    .local v6, "display":Landroid/view/Display;
    .restart local v8    # "defaultTargetNit":Ljava/lang/String;
    :cond_1af
    move/from16 v22, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    .end local v0    # "r_idx":I
    .end local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "display":Landroid/view/Display;
    .end local v8    # "defaultTargetNit":Ljava/lang/String;
    .restart local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v18    # "display":Landroid/view/Display;
    .restart local v19    # "defaultTargetNit":Ljava/lang/String;
    .restart local v22    # "r_idx":I
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    int-to-float v5, v14

    aput v5, v0, v2

    .line 162
    .end local v4    # "p1":I
    .end local v14    # "p0":I
    :goto_1be
    move/from16 v0, v22

    .end local v22    # "r_idx":I
    .restart local v0    # "r_idx":I
    :goto_1c0
    iget v4, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_235

    .line 164
    add-int/lit8 v4, v13, -0x1

    if-le v0, v4, :cond_1cb

    add-int/lit8 v0, v13, -0x1

    :cond_1cb
    move v4, v0

    .line 165
    .end local v0    # "r_idx":I
    .local v4, "r_idx":I
    :try_start_1cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] backlightArray: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, v12, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", mPanelNitsArray: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1cc .. :try_end_1fc} :catch_1fd

    .line 168
    goto :goto_234

    .line 166
    :catch_1fd
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of bound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_234
    move v0, v4

    .end local v4    # "r_idx":I
    .local v0, "r_idx":I
    :cond_235
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    const/4 v14, 0x1

    goto/16 :goto_16b

    .end local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v18    # "display":Landroid/view/Display;
    .end local v19    # "defaultTargetNit":Ljava/lang/String;
    .restart local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v6    # "display":Landroid/view/Display;
    .restart local v8    # "defaultTargetNit":Ljava/lang/String;
    :cond_244
    move/from16 v22, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    .line 171
    .end local v0    # "r_idx":I
    .end local v2    # "w_idx":I
    .end local v3    # "panelNitsArray":[F
    .end local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "display":Landroid/view/Display;
    .end local v8    # "defaultTargetNit":Ljava/lang/String;
    .end local v15    # "arrayLenNit":I
    .restart local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v18    # "display":Landroid/view/Display;
    .restart local v19    # "defaultTargetNit":Ljava/lang/String;
    goto :goto_26d

    .line 173
    .end local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v18    # "display":Landroid/view/Display;
    .end local v19    # "defaultTargetNit":Ljava/lang/String;
    .restart local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v6    # "display":Landroid/view/Display;
    .restart local v8    # "defaultTargetNit":Ljava/lang/String;
    :cond_24f
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    .end local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v6    # "display":Landroid/view/Display;
    .end local v8    # "defaultTargetNit":Ljava/lang/String;
    .restart local v17    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v18    # "display":Landroid/view/Display;
    .restart local v19    # "defaultTargetNit":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenBrightnessBacklight array length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_26d
    iget-object v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNitsArray:[F

    array-length v0, v0

    if-eqz v0, :cond_2ec

    .line 177
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4a8

    :cond_27d
    goto :goto_292

    :sswitch_27e
    const-string v2, "OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    const/4 v3, 0x1

    goto :goto_293

    :sswitch_288
    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    const/4 v3, 0x0

    goto :goto_293

    :goto_292
    const/4 v3, -0x1

    :goto_293
    packed-switch v3, :pswitch_data_4b2

    .line 187
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ADAPTIVE_TM:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 188
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Support real time panel brightness for target"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2eb

    .line 183
    :pswitch_2c0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 184
    const-string v0, "Prevent support real time panel brightness"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    goto :goto_2eb

    .line 179
    :pswitch_2c9
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 180
    const-string v0, "Enforce support real time panel brightness"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_2eb

    .line 191
    :cond_2d2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Support fixed target"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_2eb
    goto :goto_2f4

    .line 197
    :cond_2ec
    const/4 v2, 0x0

    iput-boolean v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    .line 198
    const-string v0, "Panel nit array doesn\'t exist"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_2f4
    iget-boolean v0, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    if-eqz v0, :cond_2fb

    .line 202
    invoke-virtual/range {p0 .. p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->registerBrightnessListner()V

    .line 205
    :cond_2fb
    const-string v0, "ro.build.product"

    move-object/from16 v2, v21

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "vendor":Ljava/lang/String;
    const-string v2, "essi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_310

    .line 207
    const v2, 0x3f666666    # 0.9f

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 210
    :cond_310
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.d65_weight"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    .line 214
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.sampling"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    .line 215
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.update"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_PERIOD_MS:I

    .line 216
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.avg"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_AVERAGE_LENGTH_MS:I

    .line 217
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.inc"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_INC_LIMIT_PER_SEC:F

    .line 218
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.dec"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_DEC_LIMIT_PER_SEC:F

    .line 219
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.rate"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_UPDATE_RATE:F

    .line 220
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.log_period"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LOG_TIMER_UPDATE_PERIOD_SEC:I

    .line 222
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.light.disable"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    .line 223
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound0"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound0:F

    .line 224
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound1"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound1:F

    .line 225
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mBound2"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mBound2:F

    .line 226
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mZone1"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone1:F

    .line 227
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mZone2"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mZone2:F

    .line 228
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mCp"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCp:F

    .line 229
    iget v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hdr.mRdr"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mRdr:F

    .line 231
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    .line 235
    const/4 v2, -0x1

    .line 236
    .local v2, "gpu_level":I
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_ORIGIN:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44a

    const/4 v2, 0x0

    goto :goto_45d

    .line 237
    :cond_44a
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_CUSTOM_HDR10:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45c

    const/4 v2, 0x1

    goto :goto_45d

    .line 238
    :cond_45c
    const/4 v2, 0x2

    .line 239
    :goto_45d
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdr.gpu_level"

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v3, -0x1

    .line 242
    .local v3, "gpu_method":I
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_EXYNOS_V0:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_479

    const/4 v3, 0x2

    goto :goto_49e

    .line 243
    :cond_479
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V0:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48b

    const/4 v3, 0x3

    goto :goto_49e

    .line 244
    :cond_48b
    sget-object v4, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIST_SMXXXX_V1:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49d

    const/4 v3, 0x4

    goto :goto_49e

    .line 245
    :cond_49d
    const/4 v3, 0x0

    .line 246
    :goto_49e
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hdr.gpu_method"

    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    :sswitch_data_4a8
    .sparse-switch
        0x9df -> :sswitch_288
        0x1314f -> :sswitch_27e
    .end sparse-switch

    :pswitch_data_4b2
    .packed-switch 0x0
        :pswitch_2c9
        :pswitch_2c0
    .end packed-switch
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 328
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 329
    .local v0, "arrayLength":I
    new-array v1, v0, [F

    .line 330
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_13

    .line 331
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 333
    .end local v2    # "i":I
    :cond_13
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    return-object v1
.end method

.method private getTargetNit()I
    .registers 4

    .line 551
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mD65Weight:F

    mul-float/2addr v0, v1

    .line 552
    .local v0, "panelNit":F
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 553
    .local v1, "targetNit":I
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_14

    const/16 v1, 0xc8

    .line 554
    :cond_14
    return v1
.end method

.method private mCreateTimerTask()Ljava/util/TimerTask;
    .registers 2

    .line 338
    new-instance v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;

    invoke-direct {v0, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$2;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    return-object v0
.end method

.method private registerLightSensorListener()V
    .registers 9

    .line 497
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_b

    const-string v0, "mSensorManager.registerListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_b
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1b

    .line 499
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 501
    :cond_1b
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_74

    .line 502
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 503
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x104033c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "lightSensorType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 505
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 506
    .local v3, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_74

    .line 507
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 508
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 509
    iget v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v6, :cond_6e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_6e
    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 511
    goto :goto_74

    .line 506
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 516
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v2    # "lightSensorType":Ljava/lang/String;
    .end local v3    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "i":I
    :cond_74
    :goto_74
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_8a

    .line 517
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_81

    const-string v0, "get default sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_81
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    .line 520
    :cond_8a
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v2, "mSensorManager: "

    if-eqz v0, :cond_cc

    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v3, :cond_95

    goto :goto_cc

    .line 525
    :cond_95
    :try_start_95
    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SENSOR_RATE_MS:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9e} :catch_9f

    .line 528
    goto :goto_a5

    .line 526
    :catch_9f
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error : Exception occurred at registerLightSensorListener"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a5
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_cb
    return-void

    .line 521
    :cond_cc
    :goto_cc
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_f2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensorListener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_f2
    return-void
.end method

.method private unregisterLightSensorListener()V
    .registers 5

    .line 533
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_2f

    .line 534
    const-string v0, "mSensorManager.unregisterListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSensorManager: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLightSensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_50

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_50

    .line 539
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_3f} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40

    goto :goto_50

    .line 544
    :catch_40
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at unregisterLightSensorListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4a
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Error : NullPointException occurred at unregisterLightSensorListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_50
    :goto_50
    nop

    .line 548
    :goto_51
    return-void
.end method

.method private updateTargetNit()V
    .registers 5

    .line 558
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->getTargetNit()I

    move-result v0

    .line 559
    .local v0, "targetNit":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdr.target_nit"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v1, :cond_61

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLightSensorData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, v0

    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPanelNit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdrSolution_HdrDisplayNitMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug.hdr.target_nit"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_61
    return-void
.end method


# virtual methods
.method public registerBrightnessListner()V
    .registers 4

    .line 303
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_b

    const-string v0, "mDisplayManagerInternal: register  "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_b
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_3b

    .line 305
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayManagerInternal is null. Get : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_31
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 309
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_43

    .line 312
    goto :goto_49

    .line 310
    :catch_43
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at registerBrightnessistener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method public setHdrLayerState(Z)V
    .registers 10
    .param p1, "state"    # Z

    .line 251
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    if-eq p1, v0, :cond_5c

    .line 252
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mSupportRealTimePanelNit:Z

    if-eqz v0, :cond_5a

    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisableLightSensor:I

    if-nez v0, :cond_5a

    .line 253
    const-string v0, "HdrSolution_HdrDisplayNitMapper"

    if-eqz p1, :cond_3f

    .line 254
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightSensorData:F

    .line 255
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mAmbTargetRatio:F

    .line 257
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->registerLightSensorListener()V

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 260
    :try_start_1e
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mCreateTimerTask()Ljava/util/TimerTask;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimerTask:Ljava/util/TimerTask;

    .line 261
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->LIGHT_SAMPLING_INTERVAL_MS:I

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 262
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v1, :cond_3e

    const-string v1, "Start Timer Task"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_38

    goto :goto_3e

    .line 263
    :catch_38
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error occurs at start Timer"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    goto :goto_5a

    .line 267
    :cond_3f
    const/4 v1, -0x1

    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLightManagerState:I

    .line 268
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->unregisterLightSensorListener()V

    .line 270
    :try_start_45
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 271
    iget v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    if-lez v1, :cond_53

    const-string v1, "Stop Timer Task"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_54

    .line 274
    :cond_53
    goto :goto_5a

    .line 272
    :catch_54
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error occurs at stop Timer"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mPrevState:Z

    .line 279
    :cond_5c
    return-void
.end method

.method public unregisterBrightnessListner()V
    .registers 4

    .line 316
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_20

    .line 317
    iget v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mLogLevel:I

    const-string v1, "HdrSolution_HdrDisplayNitMapper"

    if-lez v0, :cond_f

    const-string v0, "mDisplayManagerInternal: unregister  "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_f
    :try_start_f
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayBrightnessListener:Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    .line 323
    goto :goto_20

    .line 321
    :catch_1a
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error : Exception occurred at unregisterBrightnessistener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    :goto_20
    return-void
.end method
