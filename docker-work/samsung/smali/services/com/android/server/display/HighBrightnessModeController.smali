.class public Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HighBrightnessModeController$Injector;,
        Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;,
        Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;,
        Lcom/android/server/display/HighBrightnessModeController$HdrListener;,
        Lcom/android/server/display/HighBrightnessModeController$HbmEvent;,
        Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FEATURE_HDR_STATIC_VRR:Z = false

.field public static final FEATURE_SUPPORT_HDR_SOLUTION:Z

.field public static final HBM_TRANSITION_POINT_INVALID:F = Infinityf
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HighBrightnessModeController"


# instance fields
.field public mAmbientLux:F

.field public mBrightness:F

.field public final mBrightnessMax:F

.field public final mBrightnessMin:F

.field public final mClock:Lcom/android/server/display/DisplayManagerService$Clock;

.field public final mContext:Landroid/content/Context;

.field public mDisplayStatsId:I

.field public mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/display/HighBrightnessModeController$HbmEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmChangeCallback:Ljava/lang/Runnable;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mHbmMode:I

.field public mHbmStatsState:I

.field public mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field public mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public mHeight:I

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsAutoBrightnessOffByState:Z

.field public mIsBlockedByLowPowerMode:Z

.field public mIsHdrLayerPresent:Z

.field public mIsInAllowedAmbientRange:Z

.field public mIsThermalStatusWithinLimit:Z

.field public mIsTimeAvailable:Z

.field public mLogLevel:I

.field public final mRecalcRunnable:Ljava/lang/Runnable;

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mRunningStartTimeMillis:J

.field public final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

.field public mStaticVRR:Z

.field public mSupportHdrSolution:Z

.field public mThresRatio:F

.field public mThrottlingReason:I

.field public mUnthrottledBrightness:F

.field public mUseTimeAllowance:Z

.field public mWidth:I


# direct methods
.method public static synthetic $r8$lambda$FwQoqaOsLitbxjoKP4p0hm_WgC0(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->lambda$dump$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yl94PRiW-f7m4RO5bHtT-VWcNds(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogLevel(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStaticVRR(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportHdrSolution(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresRatio(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsThermalStatusWithinLimit(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 82
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HW_HDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 25

    .line 144
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p7

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 78
    iput v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    const v5, 0x3f666666    # 0.9f

    .line 79
    iput v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 80
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 81
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 102
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 103
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 104
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 105
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 112
    iput v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 115
    iput v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 116
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/4 v5, 0x1

    .line 117
    iput-boolean v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 118
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 123
    iput v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 125
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    const-wide/16 v6, -0x1

    .line 131
    iput-wide v6, v0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 138
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    .line 153
    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    move-object/from16 v6, p12

    .line 154
    iput-object v6, v0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getClock()Lcom/android/server/display/DisplayManagerService$Clock;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    .line 156
    iput-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 157
    iput v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 158
    iput v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    move/from16 v3, p8

    .line 159
    iput v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    move-object/from16 v3, p11

    .line 160
    iput-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 161
    new-instance v3, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    .line 162
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {v1, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 163
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-direct {v1, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    const-string v1, "debug.hbmc.log"

    const-string v2, "0"

    .line 167
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    const-string v1, "debug.hbmc.enforce.brt_up"

    const-string/jumbo v2, "null"

    .line 168
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "debug.hbmc.enforce.vrr"

    .line 169
    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.hbmc.thres"

    const-string v6, "0.9"

    .line 170
    invoke-static {v3, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "OFF"

    const-string v8, "HighBrightnessModeController"

    if-nez v6, :cond_bd

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 181
    sget-boolean v1, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    iput-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    goto :goto_c4

    .line 177
    :cond_b5
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    const-string v1, "Prevent HighBrightnessMode @HDR"

    .line 178
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 173
    :cond_bd
    iput-boolean v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    const-string v1, "Enforce HighBrightnessMode @HDR"

    .line 174
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_c4
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    .line 194
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    goto :goto_e9

    .line 190
    :cond_da
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    const-string v1, "Prevent Static VRR @HDR"

    .line 191
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 186
    :cond_e2
    iput-boolean v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    const-string v1, "Enforce Static VRR @HDR"

    .line 187
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e9
    move-object v0, p0

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 199
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method

.method private synthetic lambda$dump$0(Ljava/io/PrintWriter;)V
    .registers 2

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public final calculateHighBrightnessMode()I
    .registers 3

    .line 641
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 643
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_e

    const/4 p0, 0x2

    return p0

    .line 645
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public final calculateRemainingTime(J)J
    .registers 13

    .line 433
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 441
    :cond_9
    iget-wide v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3a

    cmp-long v0, v3, p1

    if-lez v0, :cond_35

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start time set to the future. curr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", start: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HighBrightnessModeController"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iput-wide p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 447
    :cond_35
    iget-wide v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    sub-long v3, p1, v3

    goto :goto_3b

    :cond_3a
    move-wide v3, v1

    .line 455
    :goto_3b
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v5, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long/2addr p1, v5

    .line 456
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 461
    iget-wide v6, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v6, v6, p1

    if-gez v6, :cond_5c

    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_46

    .line 466
    :cond_5c
    iget-wide v6, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 467
    iget-wide v8, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long/2addr v8, v6

    add-long/2addr v3, v8

    goto :goto_46

    .line 474
    :cond_67
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr p0, v3

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deviceSupportsHbm()Z
    .registers 1

    .line 429
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J
    .registers 7

    .line 407
    iget-wide v0, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    sub-long/2addr v0, v2

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    event: ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 409
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    .line 410
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 408
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    iget-wide p0, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    return-wide p0
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "HighBrightnessModeController:"

    .line 364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnthrottledBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    const-string v2, ""

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b1

    :cond_b0
    move-object v1, v2

    :goto_b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmStatsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/HighBrightnessModeController;->hbmStatsStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 376
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v1, :cond_ff

    goto :goto_101

    :cond_ff
    const-string v2, " (old/invalid)"

    :goto_101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsInAllowedAmbientRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessOffByState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHdrLayerPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsTimeAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsThermalStatusWithinLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBlockedByLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  width*height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mEvents="

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 392
    iget-wide v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_245

    .line 393
    new-instance v4, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v0

    .line 395
    :cond_245
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 396
    iget-wide v4, v3, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_278

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    event: [normal brightness]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long/2addr v0, v5

    .line 398
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_278
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v0

    goto :goto_24b

    .line 403
    :cond_27d
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .registers 2

    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 230
    :cond_d
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    return p0

    .line 226
    :cond_12
    :goto_12
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public getCurrentBrightnessMin()F
    .registers 1

    .line 218
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    return p0
.end method

.method public getHdrBrightnessValue()F
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v0, :cond_11

    .line 240
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-interface {v0, v1}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(F)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_11

    return v0

    .line 251
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-static {v0, v1, v2, v3, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    return-object p0
.end method

.method public getHighBrightnessMode()I
    .registers 1

    .line 300
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    return p0
.end method

.method public getNormalBrightnessMax()F
    .registers 2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    goto :goto_d

    :cond_b
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    :goto_d
    return p0
.end method

.method public getTransitionPoint()F
    .registers 2

    .line 304
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_b
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0
.end method

.method public handleResolutionChange(II)V
    .registers 3

    .line 559
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 560
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return-void
.end method

.method public final hbmStatsStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    .line 636
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, "HBM_ON_SUNLIGHT"

    return-object p0

    :cond_11
    const-string p0, "HBM_ON_HDR"

    return-object p0

    :cond_14
    const-string p0, "HBM_OFF"

    return-object p0
.end method

.method public final isCurrentlyAllowed()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isResolutionChanged(II)Z
    .registers 4

    .line 555
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    if-ne v0, p1, :cond_b

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    if-eq p0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onAmbientLuxChange(F)V
    .registers 3

    .line 256
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v0, :cond_d

    goto :goto_21

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 262
    :goto_18
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq p1, v0, :cond_21

    .line 263
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_21
    :goto_21
    return-void
.end method

.method public onBrightnessChanged(FFI)V
    .registers 9

    .line 270
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 273
    :cond_7
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 274
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 275
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 279
    iget-wide p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_19

    move p2, p3

    goto :goto_1a

    :cond_19
    move p2, v2

    .line 280
    :goto_1a
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v3, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_27

    iget-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    move p3, v2

    :goto_28
    if-eq p2, p3, :cond_43

    .line 283
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide p1

    if-eqz p3, :cond_35

    .line 285
    iput-wide p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    goto :goto_43

    .line 287
    :cond_35
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    iget-wide v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-virtual {p3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 288
    iput-wide v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 296
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public final recalculateTimeAllowance()V
    .registers 14

    .line 481
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    if-eqz v0, :cond_7f

    .line 482
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v2

    .line 487
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v5, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    cmp-long v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_1a

    move v5, v6

    goto :goto_1b

    :cond_1a
    move v5, v7

    :goto_1b
    if-nez v5, :cond_2d

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2d

    .line 488
    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v9, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2d

    move v8, v6

    goto :goto_2e

    :cond_2d
    move v8, v7

    :goto_2e
    if-nez v5, :cond_34

    if-eqz v8, :cond_33

    goto :goto_34

    :cond_33
    move v6, v7

    .line 490
    :cond_34
    :goto_34
    iput-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 495
    iget v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v4, v5, v4

    const-wide/16 v7, -0x1

    if-lez v4, :cond_42

    add-long/2addr v0, v2

    goto :goto_6a

    :cond_42
    if-nez v6, :cond_69

    .line 498
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_69

    .line 502
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long v4, v0, v4

    .line 503
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 504
    iget-wide v9, v6, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 505
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v11, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v9, v11

    sub-long/2addr v9, v4

    add-long/2addr v0, v9

    sub-long/2addr v0, v2

    goto :goto_6a

    :cond_69
    move-wide v0, v7

    :goto_6a
    cmp-long v2, v0, v7

    if-eqz v2, :cond_7f

    .line 535
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 541
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public final registerHdrListener(Landroid/os/IBinder;)V
    .registers 3

    .line 653
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_5

    return-void

    .line 657
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 658
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz p1, :cond_11

    .line 660
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    :cond_11
    return-void
.end method

.method public resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .registers 9

    .line 319
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 320
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 321
    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 322
    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 323
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 325
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 326
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 327
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 329
    invoke-virtual {p0, p3}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 332
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide p2, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    const/4 p3, 0x0

    const/4 p6, 0x1

    if-nez p2, :cond_41

    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    cmp-long p2, v0, p4

    if-nez p2, :cond_41

    iget-wide p1, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    cmp-long p1, p1, p4

    if-nez p1, :cond_41

    .line 335
    iput-boolean p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 336
    iput-boolean p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    goto :goto_43

    .line 338
    :cond_41
    iput-boolean p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    .line 342
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 343
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget p1, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    if-lez p1, :cond_53

    .line 344
    iput-boolean p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 345
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->startObserving()V

    .line 347
    :cond_53
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-boolean p1, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    if-nez p1, :cond_60

    .line 348
    iput-boolean p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 349
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->startObserving()V

    :cond_60
    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    .line 204
    :goto_c
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne v2, p1, :cond_19

    goto :goto_20

    .line 212
    :cond_19
    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_20
    :goto_20
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 314
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    return-void
.end method

.method public final unregisterHdrListener()V
    .registers 3

    .line 665
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    .line 666
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 667
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_c
    return-void
.end method

.method public final updateHbmMode()V
    .registers 3

    .line 545
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->calculateHighBrightnessMode()I

    move-result v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmStats(I)V

    .line 547
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-eq v1, v0, :cond_12

    .line 548
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 549
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method public final updateHbmStats(I)V
    .registers 10

    .line 565
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v1, :cond_13

    .line 568
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_13

    move p1, v1

    goto :goto_1e

    :cond_13
    if-ne p1, v3, :cond_1d

    .line 570
    iget p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1d

    move p1, v2

    goto :goto_1e

    :cond_1d
    move p1, v3

    .line 574
    :goto_1e
    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    if-ne p1, v4, :cond_23

    return-void

    :cond_23
    const/4 v5, 0x0

    if-ne v4, v2, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v5

    :goto_29
    if-ne p1, v2, :cond_2d

    move v6, v3

    goto :goto_2e

    :cond_2d
    move v6, v5

    :goto_2e
    if-eqz v4, :cond_81

    if-nez v6, :cond_81

    .line 589
    iget-boolean v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    xor-int/2addr v4, v3

    .line 590
    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_47

    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_47

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    if-ne v0, v3, :cond_47

    move v0, v3

    goto :goto_48

    :cond_47
    move v0, v5

    .line 597
    :goto_48
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v6, :cond_52

    iget-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    if-eqz v7, :cond_52

    const/4 v1, 0x6

    goto :goto_82

    :cond_52
    if-nez v6, :cond_56

    const/4 v1, 0x7

    goto :goto_82

    .line 603
    :cond_56
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-nez v6, :cond_5c

    move v1, v3

    goto :goto_82

    .line 605
    :cond_5c
    iget-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v3, :cond_61

    goto :goto_82

    :cond_61
    if-nez v4, :cond_7f

    if-eqz v0, :cond_66

    goto :goto_7f

    .line 610
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_6c

    const/4 v1, 0x4

    goto :goto_82

    .line 613
    :cond_6c
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-eqz v0, :cond_72

    const/4 v1, 0x5

    goto :goto_82

    .line 616
    :cond_72
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_81

    const/16 v1, 0x9

    goto :goto_82

    :cond_7f
    :goto_7f
    move v1, v2

    goto :goto_82

    :cond_81
    move v1, v5

    .line 623
    :goto_82
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->reportHbmStateChange(III)V

    .line 624
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    return-void
.end method
