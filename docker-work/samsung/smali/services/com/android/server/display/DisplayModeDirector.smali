.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;,
        Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;,
        Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;,
        Lcom/android/server/display/DisplayModeDirector$BallotBox;,
        Lcom/android/server/display/DisplayModeDirector$RealInjector;,
        Lcom/android/server/display/DisplayModeDirector$Injector;,
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;,
        Lcom/android/server/display/DisplayModeDirector$HbmObserver;,
        Lcom/android/server/display/DisplayModeDirector$SensorObserver;,
        Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field public static final FLOAT_TOLERANCE:F = 0.01f

.field public static final GLOBAL_ID:I = -0x1

.field public static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field public static final MSG_HIGH_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x6

.field public static final MSG_LOW_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field public static final MSG_REFRESH_RATE_IN_HBM_HDR_CHANGED:I = 0x8

.field public static final MSG_REFRESH_RATE_IN_HBM_SUNLIGHT_CHANGED:I = 0x7

.field public static final MSG_REFRESH_RATE_IN_HIGH_ZONE_CHANGED:I = 0x5

.field public static final MSG_REFRESH_RATE_IN_LOW_ZONE_CHANGED:I = 0x4

.field public static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field public DEBUG_VRR:Z

.field public mAlwaysRespectAppRequest:Z

.field public final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field public mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field public mChangePassviceModeByDisplayToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

.field public final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field public mDisplayToken:Landroid/os/IBinder;

.field public final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field public final mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

.field public final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mLoggingEnabled:Z

.field public mModeSwitchingType:I

.field public mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

.field public mReportedRefreshRateModeByDisplayToken:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestedPassive:Z

.field public final mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

.field public mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public final mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

.field public mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5AVyPyjP6fzksJpmFihSQh10Vjg(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->lambda$new$0(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpiCg4VYctE97pnhaz_zRiczQ-U(Landroid/os/IBinder;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->lambda$notifyRefreshRateModeLocked$1(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG_VRR(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->DEBUG_VRR:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlwaysRespectAppRequest(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChangePassviceModeByDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mChangePassviceModeByDisplayToken:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfig(Lcom/android/server/display/DisplayModeDirector;)Landroid/provider/DeviceConfigInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mRequestedPassive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateRefreshRateModeByDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyRefreshRateModeLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->updateDefaultDisplayToken()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 195
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;

    invoke-direct {v0, p1}, Lcom/android/server/display/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 8

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 177
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    .line 180
    :goto_16
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    .line 187
    iput-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->DEBUG_VRR:Z

    .line 1546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mChangePassviceModeByDisplayToken:Ljava/util/ArrayList;

    .line 3596
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    .line 3597
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mReportedRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    .line 3692
    iput-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mRequestedPassive:Z

    .line 200
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 201
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 202
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 203
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 204
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 205
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 206
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 207
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 208
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 209
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 210
    new-instance p2, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$UdfpsObserver-IA;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    .line 211
    new-instance p2, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    .line 216
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    .line 217
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    .line 218
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 219
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p3, p2, v3, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    .line 221
    invoke-interface {p3}, Lcom/android/server/display/DisplayModeDirector$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 222
    iput-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 225
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p1, :cond_b1

    .line 226
    new-instance p1, Lcom/android/server/display/RefreshRateTokenController;

    invoke-direct {p1, v0}, Lcom/android/server/display/RefreshRateTokenController;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    .line 229
    :cond_b1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p1, :cond_c0

    .line 230
    new-instance p1, Lcom/samsung/android/core/SystemHistory;

    const/16 p2, 0xf

    const-string p3, "DisplayModeDirector"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    :cond_c0
    return-void
.end method

.method private synthetic lambda$new$0(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$notifyRefreshRateModeLocked$1(Landroid/os/IBinder;I)V
    .registers 2

    .line 3613
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->notifyHFRmode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object p0

    :cond_1d
    const-string p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object p0

    :cond_20
    const-string p0, "SWITCHING_TYPE_NONE"

    return-object p0
.end method


# virtual methods
.method public consumePassiveMode()Z
    .registers 4

    .line 1567
    const-class v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v0

    .line 1568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mChangePassviceModeByDisplayToken:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1569
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mChangePassviceModeByDisplayToken:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 1570
    monitor-exit v0

    return p0

    .line 1572
    :cond_17
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public consumeUpdateRefreshRateMode()Z
    .registers 5

    .line 3622
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3623
    :try_start_3
    const-class v1, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    .line 3624
    :try_start_6
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    .line 3625
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3626
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mUpdateRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 3627
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_34

    return p0

    .line 3629
    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 3630
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_34

    const/4 p0, 0x0

    return p0

    :catchall_31
    move-exception p0

    .line 3629
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0

    :catchall_34
    move-exception p0

    .line 3630
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public createLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    const-string v2, "acquire"

    aput-object v2, v0, v1

    const v1, 0x13af12

    .line 3735
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3736
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    new-instance p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowRefreshRateToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3737
    invoke-virtual {p0}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 3736
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/RefreshRateToken;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public createRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .registers 8

    .line 3756
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    new-instance p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateMaxLimitToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3758
    invoke-virtual {p0, p2}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->setRefreshRate(I)Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 3756
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/RefreshRateToken;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public createRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .registers 8

    .line 3800
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    new-instance p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateMinLimitToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3802
    invoke-virtual {p0, p2}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->setRefreshRate(I)Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->build()Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    move-result-object p0

    .line 3800
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/RefreshRateToken;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "DisplayModeDirector"

    .line 679
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_8
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v1, :cond_1c

    const-string v1, "  RefreshRateTypeOfDisplay:"

    .line 683
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    const-string v1, "  mSupportedModesByDisplay:"

    .line 687
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 688
    :goto_23
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 689
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 690
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 691
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_5c
    const-string v2, "  mDefaultModeByDisplay:"

    .line 693
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 694
    :goto_62
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_97

    .line 695
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 696
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_97
    const-string v2, "  mVotesByDisplay:"

    .line 699
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    :goto_9c
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_fe

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/16 v3, 0x10

    :goto_cd
    if-ltz v3, :cond_fb

    .line 704
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v4, :cond_d8

    goto :goto_f8

    .line 708
    :cond_d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f8
    add-int/lit8 v3, v3, -0x1

    goto :goto_cd

    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 711
    :cond_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz v1, :cond_137

    .line 715
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/RefreshRateTokenController;->dump(Ljava/io/PrintWriter;)V

    .line 718
    :cond_137
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 719
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 720
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 721
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 722
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 724
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-nez v1, :cond_159

    .line 726
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 730
    :cond_159
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v1, :cond_163

    .line 731
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->dumpHistory(Ljava/io/PrintWriter;)V

    .line 734
    :cond_163
    monitor-exit v0
    :try_end_164
    .catchall {:try_start_8 .. :try_end_164} :catchall_16a

    .line 736
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_16a
    move-exception p0

    .line 734
    :try_start_16b
    monitor-exit v0
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    throw p0
.end method

.method public dumpHistory(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "DisplayModeDirector History"

    .line 3672
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    .line 3674
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget v1, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    .line 545
    :goto_10
    array-length v3, p1

    move v4, v2

    :goto_12
    if-ge v4, v3, :cond_de

    aget-object v5, p1, v4

    .line 546
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    const-string v8, "Discarding mode "

    const-string v9, "DisplayModeDirector"

    if-ne v6, v7, :cond_94

    .line 547
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v6, v7, :cond_2b

    goto :goto_94

    .line 557
    :cond_2b
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    .line 561
    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v10, 0x3c23d70a    # 0.01f

    sub-float/2addr v7, v10

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_5d

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v7, v10

    cmpl-float v7, v6, v7

    if-lez v7, :cond_41

    goto :goto_5d

    .line 572
    :cond_41
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    sub-float/2addr v7, v10

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_da

    .line 574
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    add-float/2addr v6, v10

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_da

    move v1, v2

    goto/16 :goto_da

    .line 563
    :cond_5d
    :goto_5d
    iget-boolean v7, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v7, :cond_da

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", outside refresh rate bounds: minRefreshRate="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", maxRefreshRate="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", modeRefreshRate="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 548
    :cond_94
    :goto_94
    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v6, :cond_da

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", wrong size: desiredWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": desiredHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": actualWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": actualHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_de
    if-eqz v1, :cond_e6

    .line 579
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_e6
    return-object v0
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object p0
.end method

.method public getBrightnessObserver()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 831
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 378
    iget-object v2, v0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 379
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 380
    iget-object v4, v0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 381
    iget-object v5, v0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    if-eqz v4, :cond_251

    if-nez v5, :cond_21

    goto/16 :goto_251

    .line 389
    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v7}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 395
    iget-boolean v8, v0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    const/16 v9, 0x10

    const/4 v10, 0x0

    if-eqz v8, :cond_39

    const/4 v8, 0x7

    const/16 v11, 0x8

    goto :goto_3b

    :cond_39
    move v11, v9

    move v8, v10

    :goto_3b
    if-gt v8, v11, :cond_120

    .line 403
    invoke-virtual {v0, v3, v8, v11, v7}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 409
    iget v6, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v12, -0x1

    if-eq v6, v12, :cond_49

    iget v6, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v6, v12, :cond_55

    .line 411
    :cond_49
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    iput v6, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 412
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    iput v6, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 415
    :cond_55
    invoke-virtual {v0, v4, v7}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)Ljava/util/ArrayList;

    move-result-object v6

    .line 416
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c2

    .line 417
    iget-boolean v11, v0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v11, :cond_120

    const-string v11, "DisplayModeDirector"

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found available modes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " with lowest priority considered "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and constraints: width="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", height="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", minRefreshRate="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", maxRefreshRate="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", disableRefreshRateSwitching="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", baseModeRefreshRate="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120

    .line 433
    :cond_c2
    iget-boolean v12, v0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v12, :cond_11c

    const-string v12, "DisplayModeDirector"

    .line 434
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and with the following constraints: width="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", height="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", minRefreshRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", maxRefreshRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", disableRefreshRateSwitching="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", baseModeRefreshRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 434
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3b

    .line 451
    :cond_120
    :goto_120
    new-instance v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v8}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    const/4 v11, 0x6

    .line 452
    invoke-virtual {v0, v3, v11, v9, v8}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 457
    iget v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v11, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 458
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 459
    iget v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v11, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 460
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 461
    iget-boolean v9, v0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_160

    const-string v9, "DisplayModeDirector"

    const-string v13, "App request range: [%.0f %.0f]"

    new-array v14, v11, [Ljava/lang/Object;

    .line 462
    iget v15, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 464
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v14, v10

    iget v15, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 465
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v14, v12

    .line 463
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 462
    invoke-static {v9, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    const/4 v9, 0x0

    .line 471
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_165
    :goto_165
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Display$Mode;

    .line 472
    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 473
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v16

    const v17, 0x3c23d70a    # 0.01f

    sub-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_165

    iget v15, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    .line 475
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v16

    add-float v16, v16, v17

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_165

    move-object v9, v14

    goto :goto_165

    :cond_18e
    if-nez v9, :cond_1c3

    .line 484
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_194
    :goto_194
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Display$Mode;

    .line 486
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v15, :cond_1b8

    iget v15, v0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v15, :cond_1b8

    if-eqz v9, :cond_1b6

    .line 489
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v15

    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_194

    :cond_1b6
    move-object v9, v14

    goto :goto_194

    .line 494
    :cond_1b8
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getModeId()I

    move-result v14

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    if-ne v14, v15, :cond_194

    move-object v9, v5

    :cond_1c3
    if-nez v9, :cond_1d2

    .line 504
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d2

    .line 505
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/view/Display$Mode;

    :cond_1d2
    if-nez v9, :cond_217

    const-string v0, "DisplayModeDirector"

    .line 509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", votes = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supported modes = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 514
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v4, v0, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v5, v0, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    invoke-direct {v1, v3, v10, v4, v5}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v2

    return-object v1

    .line 520
    :cond_217
    iget v1, v0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eqz v1, :cond_21f

    iget-boolean v1, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v1, :cond_22f

    .line 522
    :cond_21f
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 523
    iput v1, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v1, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 524
    iget v3, v0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v3, :cond_22f

    .line 525
    iput v1, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iput v1, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 529
    :cond_22f
    iget v0, v0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-ne v0, v11, :cond_234

    move v10, v12

    .line 532
    :cond_234
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v4, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v5, v7, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v5, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v6, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    invoke-direct {v0, v1, v10, v3, v4}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    monitor-exit v2

    return-object v0

    :cond_251
    :goto_251
    const-string v0, "DisplayModeDirector"

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v2

    return-object v0

    :catchall_273
    move-exception v0

    .line 538
    monitor-exit v2
    :try_end_275
    .catchall {:try_start_7 .. :try_end_275} :catchall_273

    throw v0
.end method

.method public getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    const/4 p1, 0x0

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 856
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getHbmObserver()Lcom/android/server/display/DisplayModeDirector$HbmObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 846
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public getModeSwitchingType()I
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 653
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 788
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    .line 790
    :cond_11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 791
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getRefreshRateMode()I
    .registers 2

    .line 3581
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3582
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3583
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getReportedRefreshRateMode()I
    .registers 4

    .line 3587
    const-class v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v0

    .line 3588
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mReportedRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 p0, -0x1

    .line 3589
    monitor-exit v0

    return p0

    .line 3592
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mReportedRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 3593
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getSettingsObserver()Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 836
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 841
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 669
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayModeDirector$Vote;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 670
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getVotesLocked(I)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_f

    .line 294
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_14

    .line 296
    :cond_f
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 299
    :goto_14
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_3c

    const/4 v0, 0x0

    .line 301
    :goto_20
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 302
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 303
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_39

    .line 304
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3c
    return-object p1
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 826
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 816
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 811
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public logCurrentState(ILcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    .line 3641
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3642
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule to change allowedModes="

    .line 3643
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-virtual {p2}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", displayId="

    .line 3645
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3647
    :goto_20
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_6a

    const-string p1, "\n "

    .line 3648
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    const/16 p2, 0x10

    :goto_45
    if-ltz p2, :cond_67

    .line 3651
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v3, :cond_50

    goto :goto_64

    :cond_50
    const-string v4, "\n   "

    .line 3655
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_64
    add-int/lit8 p2, p2, -0x1

    goto :goto_45

    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_6a
    const-string p1, "\n"

    .line 3659
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mModeSwitchingType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    .line 3660
    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object p1

    .line 3659
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mAlwaysRespectAppRequest: "

    .line 3661
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 3663
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->logCurrentStateLocked()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 3664
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->logCurrentStateLocked()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayModeDirectorHistory:Lcom/samsung/android/core/SystemHistory;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    .line 3667
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_af
    move-exception p0

    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_7 .. :try_end_b1} :catchall_af

    throw p0
.end method

.method public final notifyDesiredDisplayModeSpecsChangedLocked()V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    .line 775
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 780
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 782
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public final notifyRefreshRateModeLocked()Z
    .registers 7

    .line 3601
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isPassiveLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto :goto_21

    .line 3603
    :cond_f
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_21

    .line 3606
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result v0

    .line 3608
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->getReportedRefreshRateMode()I

    move-result v2

    if-eq v0, v2, :cond_46

    .line 3609
    const-class v2, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v2

    .line 3610
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mReportedRefreshRateModeByDisplayToken:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3611
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    .line 3612
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    new-instance v4, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v0}, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;I)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3615
    monitor-exit v2

    return v1

    :catchall_43
    move-exception p0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_43

    throw p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public onBootCompleted()V
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->observe()V

    return-void
.end method

.method public onUserSwitching()V
    .registers 3

    .line 3680
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3681
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 3682
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateLowPowerModeSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 3683
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateModeSwitchingTypeSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V

    .line 3684
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v1, :cond_1c

    .line 3685
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;Z)V

    .line 3687
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public requestPassiveMode(Z)V
    .registers 6

    .line 3695
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3696
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRequestedPassive:Z

    if-eq p1, v1, :cond_32

    const-string v1, "DisplayModeDirector"

    .line 3697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPassiveMode, passive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 3698
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3697
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mRequestedPassive:Z

    .line 3700
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 3702
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 602
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .line 282
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 285
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    .line 286
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setModeSwitchingType(I)V
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_c

    .line 640
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector;->mModeSwitchingType:I

    .line 641
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 643
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eq v1, p1, :cond_15

    .line 612
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 613
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 615
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz p1, :cond_15

    .line 616
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 620
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 630
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .registers 3

    .line 244
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->updateDefaultDisplayToken()Z

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 249
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 251
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_1e

    .line 253
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 255
    :cond_1e
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/DisplayModeDirector$SensorObserver;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->observe()V

    .line 256
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->observe()V

    .line 260
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-nez p1, :cond_31

    .line 262
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->observe()V

    .line 264
    :cond_31
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 267
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 268
    monitor-exit p1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final summarizeVotes(Landroid/util/SparseArray;IILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;II",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    .line 340
    invoke-virtual {p4}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    :goto_3
    if-lt p3, p2, :cond_58

    .line 344
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez p0, :cond_e

    goto :goto_55

    .line 349
    :cond_e
    iget v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 350
    iget v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 354
    iget v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    iget v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v0, :cond_3b

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v1, :cond_3b

    .line 356
    iput v1, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 357
    iput v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 359
    :cond_3b
    iget-boolean v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 362
    :cond_46
    iget v0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_55

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    cmpl-float v0, p0, v1

    if-lez v0, :cond_55

    .line 363
    iput p0, p4, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    :cond_55
    :goto_55
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_58
    return-void
.end method

.method public final updateDefaultDisplayToken()Z
    .registers 5

    .line 1550
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    .line 1551
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1552
    iget-object v0, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-nez v0, :cond_10

    goto :goto_23

    .line 1556
    :cond_10
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v0

    .line 1558
    const-class v2, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    monitor-enter v2

    .line 1559
    :try_start_17
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    .line 1560
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayToken:Landroid/os/IBinder;

    if-eq v3, v0, :cond_1e

    const/4 v1, 0x1

    .line 1562
    :cond_1e
    monitor-exit v2

    return v1

    :catchall_20
    move-exception p0

    .line 1563
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    :goto_23
    return v1
.end method

.method public updateResolutionLocked(ILandroid/view/DisplayInfo;)V
    .registers 10

    .line 3711
    iget v0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3712
    iget-object p2, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_28

    aget-object v4, p2, v3

    .line 3713
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-ne v5, v0, :cond_25

    .line 3714
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 3715
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p2

    const/4 v0, 0x1

    move v6, v0

    move v0, p2

    move p2, v2

    move v2, v6

    goto :goto_2a

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_28
    move p2, v2

    move v0, p2

    :goto_2a
    if-nez v2, :cond_2d

    return-void

    :cond_2d
    const/16 v1, 0xb

    .line 3723
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayModeDirector;->getVote(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 3724
    iget v2, v2, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-ne v2, p2, :cond_3a

    return-void

    .line 3728
    :cond_3a
    invoke-static {p2, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p2

    .line 3729
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public final updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 8

    .line 744
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    const-string v1, ", vote="

    const-string v2, "DisplayModeDirector"

    if-eqz v0, :cond_34

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoteLocked(displayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    if-ltz p2, :cond_74

    const/16 v0, 0x10

    if-le p2, v0, :cond_3b

    goto :goto_74

    .line 755
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz p3, :cond_45

    .line 758
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    .line 760
    :cond_45
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    :goto_48
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_70

    .line 764
    iget-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz p2, :cond_6b

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No votes left for display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", removing."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_6b
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 770
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void

    .line 750
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 750
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 4

    const/4 v0, -0x1

    .line 740
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
