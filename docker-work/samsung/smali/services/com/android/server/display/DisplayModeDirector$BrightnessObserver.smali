.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_ZONE_HIGH:I = 0x3

.field public static final BRIGHTNESS_ZONE_LOW:I = 0x1

.field public static final BRIGHTNESS_ZONE_MID:I = 0x2

.field public static final LFD_CMD_FOR_LUX:Ljava/lang/String; = "client=disp scope=normal,lpm "

.field public static final LFD_FIX_DEFAULT:I = 0x0

.field public static final LFD_FIX_PASSIVE:I = 0x3

.field public static final LFD_SCALABILITY_DEFAULT:I = 0x0

.field public static final LFD_SCALABILITY_MAX:I = 0x1

.field public static final LFD_SCALABILITY_MIN:I = 0x6

.field public static final LIGHT_SENSOR_RATE_MS:I = 0xfa

.field public static final PROPERTY_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.ambient_brightness"

.field public static final PROPERTY_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.display_brightness"

.field public static final PROPERTY_SUB_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_ambient_brightness"

.field public static final PROPERTY_SUB_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_display_brightness"

.field public static final VRR_LFD_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/vrr_lfd"


# instance fields
.field public mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public mAmbientLux:F

.field public mBrightness:I

.field public mBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayState:I

.field public mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

.field public final mHandler:Landroid/os/Handler;

.field public mHighAmbientBrightnessThresholds:[I

.field public mHighDisplayBrightnessThresholds:[I

.field public final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field public mIsDisplayPowerModeOnByDeviceType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsWirelessCharging:Z

.field public mLfdFix:I

.field public mLfdScalability:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field public mLoggingEnabled:Z

.field public mLowAmbientBrightnessThresholds:[I

.field public mLowDisplayBrightnessThresholds:[I

.field public mLowPowerModeEnabled:Z

.field public mPassive:Z

.field public mRefreshRateChangeable:Z

.field public mRefreshRateInHighZone:I

.field public mRefreshRateInLowZone:I

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldObserveAmbientHighChange:Z

.field public mShouldObserveAmbientLowChange:Z

.field public mShouldObserveDisplayHighChange:Z

.field public mShouldObserveDisplayLowChange:Z

.field public mSubBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

.field public mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$9fU846vnTlEHc1p9tf2iexSLgkM(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->lambda$observe$1(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$X4qpmEQCE7Jyh-RrHstKAvsozh8(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->lambda$observe$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wui5afK27thohif8QbBI4krzc84(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->lambda$setLfdValue$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDisplayPowerModeOnByDeviceType(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsDisplayPowerModeOnByDeviceType:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWirelessCharging(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLfdFix(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdFix:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWirelessCharging(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLfdFix(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdFix:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLfdValue(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLfdValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePassiveLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updatePassiveLocked(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 6

    .line 1839
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener-IA;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 1816
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    const/4 p1, -0x1

    .line 1818
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1821
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsDisplayPowerModeOnByDeviceType:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 1832
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 1833
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1834
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1913
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 2660
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    .line 2690
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalability:I

    .line 2691
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdFix:I

    .line 2787
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    .line 2788
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$2;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

    .line 1840
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1841
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 1842
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 1844
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x107008b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1846
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1070073

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1849
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length p3, p3

    array-length p1, p1

    const-string p4, ", ambientBrightnessThresholds="

    if-ne p3, p1, :cond_b7

    .line 1858
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10700e0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1860
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10700df

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1862
    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length p3, p3

    array-length p1, p1

    if-ne p3, p1, :cond_8e

    .line 1871
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e009d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return-void

    .line 1864
    :cond_8e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1867
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1869
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1850
    :cond_b7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1853
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1855
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$observe$0()V
    .registers 2

    .line 1984
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1985
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1986
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private synthetic lambda$observe$1(F)V
    .registers 6

    const-string v0, "DisplayBrightnessListener, mBrignthess = "

    const-string v1, "DisplayModeDirector"

    .line 1963
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 1964
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-eq p1, v2, :cond_a0

    .line 1966
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessZone(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessZone(I)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 1967
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetDEBUG_VRR(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayBrightnessListener#onChanged returned, brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_88

    .line 1979
    :cond_34
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1974
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetDEBUG_VRR(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayBrightnessListener#onChanged, set to brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_88

    .line 1979
    :cond_67
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a0

    :catchall_88
    move-exception v2

    .line 1979
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    throw v2

    :cond_a0
    :goto_a0
    return-void
.end method

.method private synthetic lambda$setLfdValue$2(Ljava/lang/String;I)V
    .registers 5

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client=disp scope=normal,lpm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/sys/class/lcd/panel/vrr_lfd"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "  BrightnessObserver"

    .line 2118
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateChangeable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInLowZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_ba
    if-ge v3, v1, :cond_d5

    aget v4, v0, v3

    .line 2129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 2132
    :cond_d5
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_d9
    if-ge v3, v1, :cond_f4

    aget v4, v0, v3

    .line 2133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mAmbientLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    .line 2136
    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInHighZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_13a
    if-ge v3, v1, :cond_155

    aget v4, v0, v3

    .line 2141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayHighBrightnessThresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13a

    .line 2144
    :cond_155
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_158
    if-ge v2, v1, :cond_173

    aget v3, v0, v2

    .line 2145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientHighBrightnessThresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_158

    .line 2148
    :cond_173
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2151
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_2b6

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowDisplayBrightnessThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowAmbientBrightnessThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2155
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHighDisplayBrightnessThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHighAmbientBrightnessThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighAmbientBrightnessThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRequestedPassive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPassive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessFeature:Ljava/lang/String;

    if-eqz v0, :cond_250

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDisplayBrightnessFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    :cond_250
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessFeature:Ljava/lang/String;

    if-eqz v0, :cond_272

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientBrightnessFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2172
    :cond_272
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_294

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDisplayBrightnessProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    :cond_294
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_2b6

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientBrightnessProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    :cond_2b6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS_PLUS:Z

    if-eqz v0, :cond_2e6

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLfdScalability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsWirelessCharging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    :cond_2e6
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    if-eqz v0, :cond_2f6

    .line 2188
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2189
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    :cond_2f6
    return-void
.end method

.method public final getBrightness(I)I
    .registers 2

    .line 2815
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2817
    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public final getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;
    .registers 8

    .line 2587
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDisplayObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->-$$Nest$fgetmIsSubScreen(Lcom/android/server/display/DisplayModeDirector$DisplayObserver;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2588
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSubBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    if-nez v0, :cond_27

    .line 2589
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    const-string v3, ""

    const-string v4, ""

    const-string/jumbo v5, "persist.dm.passive.sub_display_brightness"

    const-string/jumbo v6, "persist.dm.passive.sub_ambient_brightness"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSubBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    .line 2595
    :cond_27
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSubBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    return-object p0

    .line 2597
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    if-nez v0, :cond_41

    .line 2598
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    const-string v3, ""

    const-string v4, ""

    const-string/jumbo v5, "persist.dm.passive.display_brightness"

    const-string/jumbo v6, "persist.dm.passive.ambient_brightness"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    .line 2604
    :cond_41
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightnessThreshold:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    return-object p0
.end method

.method public final getBrightnessZone(I)I
    .registers 3

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    if-le v0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1907
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I

    if-ge p0, p1, :cond_14

    const/4 p0, 0x3

    return p0

    :cond_14
    const/4 p0, 0x2

    return p0
.end method

.method public final getLfdFix(IF)I
    .registers 5

    .line 2745
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->supportApsr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 2749
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isLowBrightness(IF)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 p0, 0x3

    return p0
.end method

.method public final getLfdScalability(IF)I
    .registers 5

    .line 2729
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2730
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->supportApsr()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_26

    .line 2734
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isLowBrightness(IF)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 2738
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isHighBrightness(IF)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x6

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public getLowAmbientBrightnessThresholds()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1896
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1888
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    return-object p0
.end method

.method public getRefreshRateInLowZone()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1880
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return p0
.end method

.method public final getVoteAsLfdScalabilityPolicyLocked(I)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 2759
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result p0

    if-nez p0, :cond_30

    .line 2762
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p0

    int-to-float p0, p0

    .line 2763
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p1

    int-to-float p1, p1

    .line 2761
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p0

    return-object p0

    .line 2766
    :cond_30
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p0

    int-to-float p0, p0

    .line 2767
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->max()I

    move-result p1

    int-to-float p1, p1

    .line 2765
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p0

    return-object p0
.end method

.method public final hasValidHighZone()Z
    .registers 2

    .line 2498
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final hasValidLowZone()Z
    .registers 2

    .line 2493
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final hasValidThreshold([I)Z
    .registers 5

    .line 2319
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_e

    aget v2, p1, v1

    if-ltz v2, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method public final isDeviceActive()Z
    .registers 2

    .line 2571
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isHighBrightness(IF)Z
    .registers 5

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I

    .line 2717
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighAmbientBrightnessThreshold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    if-le p1, v0, :cond_1a

    if-eq p0, v1, :cond_1a

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isInsideHighZone(IF)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 2352
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 2353
    aget v2, v2, v1

    .line 2354
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-ltz v2, :cond_1a

    if-ltz v3, :cond_1a

    if-lt p1, v2, :cond_27

    int-to-float v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_27

    return v4

    :cond_1a
    if-ltz v2, :cond_1f

    if-lt p1, v2, :cond_27

    return v4

    :cond_1f
    if-ltz v3, :cond_27

    int-to-float v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_27

    return v4

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return v0
.end method

.method public final isInsideLowZone(IF)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 2329
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 2330
    aget v2, v2, v1

    .line 2331
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-ltz v2, :cond_1a

    if-ltz v3, :cond_1a

    if-gt p1, v2, :cond_27

    int-to-float v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_27

    return v4

    :cond_1a
    if-ltz v2, :cond_1f

    if-gt p1, v2, :cond_27

    return v4

    :cond_1f
    if-ltz v3, :cond_27

    int-to-float v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_27

    return v4

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return v0
.end method

.method public final isLowBrightness(IF)Z
    .registers 5

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    .line 2705
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    if-lt p1, v0, :cond_11

    const/4 p1, -0x1

    if-ne v0, p1, :cond_1b

    :cond_11
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1b

    int-to-float p1, v1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1f

    .line 2707
    :cond_1b
    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    if-eqz p0, :cond_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public isPassiveLocked()Z
    .registers 1

    .line 2685
    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    return p0
.end method

.method public final isPassiveModeLocked(IF)Z
    .registers 10

    .line 2663
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    .line 2664
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSeamlessPlus()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_72

    .line 2667
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    .line 2669
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I

    .line 2670
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightnessThreshold()Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;

    move-result-object v4

    iget v4, v4, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighAmbientBrightnessThreshold:I

    .line 2671
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4d

    if-lt p1, v0, :cond_4d

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_41

    int-to-float v0, v2

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4d

    :cond_41
    const/4 v0, -0x1

    if-eq v3, v0, :cond_72

    if-le p1, v3, :cond_72

    if-eq v4, v0, :cond_72

    int-to-float p1, v4

    cmpl-float p1, p2, p1

    if-lez p1, :cond_72

    :cond_4d
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object p1

    .line 2678
    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result p1

    if-eq p1, v6, :cond_69

    .line 2679
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result p1

    if-nez p1, :cond_69

    .line 2680
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result p1

    if-eqz p1, :cond_72

    :cond_69
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmAlwaysRespectAppRequest(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result p0

    if-nez p0, :cond_72

    move v1, v6

    :cond_72
    :goto_72
    return v1
.end method

.method public logCurrentStateLocked()Ljava/lang/String;
    .registers 3

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BrightnessObserver mPassive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLfdScalability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestedPassive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWirelessCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .registers 5

    .line 1957
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1958
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1960
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz p1, :cond_2b

    .line 1961
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 1962
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)V

    .line 1990
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1992
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    goto :goto_32

    :cond_2b
    const/4 p1, 0x0

    .line 1995
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1999
    :goto_32
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    .line 2000
    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object p1

    .line 2001
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    .line 2002
    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v0

    if-eqz p1, :cond_52

    if-eqz v0, :cond_52

    .line 2004
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_52

    .line 2007
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 2008
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 2012
    :cond_52
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    .line 2013
    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object p1

    .line 2014
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    .line 2015
    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v0

    if-eqz p1, :cond_72

    if-eqz v0, :cond_72

    .line 2017
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_72

    .line 2020
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 2021
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 2024
    :cond_72
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2025
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 2028
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 2031
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS_PLUS:Z

    if-eqz p1, :cond_ab

    .line 2032
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2033
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mWirelessChargeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2038
    :cond_ab
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public final onBrightnessChangedLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 2388
    invoke-virtual {p0, v0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked(ZZ)V

    return-void
.end method

.method public final onBrightnessChangedLocked(ZZ)V
    .registers 11

    .line 2410
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-gez v0, :cond_5

    return-void

    .line 2417
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "DisplayModeDirector"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_e0

    .line 2418
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsDisplayPowerModeOnByDeviceType:Landroid/util/SparseArray;

    .line 2419
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v6, :cond_1d

    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x2

    goto :goto_1e

    :cond_1d
    move v6, v5

    .line 2418
    :goto_1e
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_46

    .line 2422
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_46

    .line 2423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onBrightnessChangedLocked returned by powerMode, caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2423
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2428
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBrightnessChangedLocked, brightness="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lux="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS_PLUS:Z

    if-eqz v0, :cond_d8

    .line 2436
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p0, v0, v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getLfdFix(IF)I

    move-result v0

    if-ne v0, v2, :cond_8d

    .line 2437
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v6}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v6

    .line 2438
    invoke-virtual {v6}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getRefreshRateModeLocked()I

    move-result v6

    if-eq v6, v5, :cond_8b

    .line 2439
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result v6

    if-eqz v6, :cond_8d

    :cond_8b
    move v6, v5

    goto :goto_8e

    :cond_8d
    move v6, v4

    .line 2440
    :goto_8e
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->supportApsr()Z

    move-result v7

    if-eqz v7, :cond_a6

    iget v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdFix:I

    if-ne v0, v7, :cond_9e

    if-eqz p2, :cond_a6

    .line 2442
    :cond_9e
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdFix:I

    const-string v4, "fix"

    .line 2443
    invoke-virtual {p0, v4, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLfdValue(Ljava/lang/String;I)V

    move v4, v5

    .line 2447
    :cond_a6
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p0, v0, v7}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getLfdScalability(IF)I

    move-result v0

    .line 2448
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->supportApsr()Z

    move-result v7

    if-nez v7, :cond_d4

    iget v7, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalability:I

    if-ne v0, v7, :cond_be

    if-eqz p2, :cond_d4

    .line 2450
    :cond_be
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLfdScalability:I

    const-string/jumbo p2, "scalability"

    .line 2451
    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setLfdValue(Ljava/lang/String;I)V

    if-ne v0, v5, :cond_d2

    .line 2453
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getVoteAsLfdScalabilityPolicyLocked(I)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p2

    .line 2454
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    move-object v1, p2

    goto :goto_d6

    :cond_d2
    move-object v0, v1

    goto :goto_d6

    :cond_d4
    move-object v0, v1

    move v5, v4

    :goto_d6
    move v4, v6

    goto :goto_da

    :cond_d8
    move-object v0, v1

    move v5, v4

    .line 2460
    :goto_da
    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updatePassiveLocked(ZZ)V

    if-nez v5, :cond_124

    return-void

    .line 2467
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidLowZone()Z

    move-result p1

    if-eqz p1, :cond_f2

    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideLowZone(IF)Z

    move-result p1

    if-eqz p1, :cond_f2

    move p1, v5

    goto :goto_f3

    :cond_f2
    move p1, v4

    :goto_f3
    if-eqz p1, :cond_102

    .line 2470
    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    int-to-float p2, p1

    int-to-float p1, p1

    .line 2471
    invoke-static {p2, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2472
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_103

    :cond_102
    move-object p1, v1

    .line 2475
    :goto_103
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidHighZone()Z

    move-result p2

    if-eqz p2, :cond_114

    iget p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2476
    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideHighZone(IF)Z

    move-result p2

    if-eqz p2, :cond_114

    move v4, v5

    :cond_114
    if-eqz v4, :cond_123

    .line 2478
    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    int-to-float p2, p1

    int-to-float p1, p1

    .line 2479
    invoke-static {p2, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2480
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_124

    :cond_123
    move-object v0, p1

    .line 2484
    :cond_124
    :goto_124
    iget-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p1, :cond_150

    .line 2485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display brightness "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ambient lux "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", Vote "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_150
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1, v2, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2489
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 p1, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public onDeviceConfigHighBrightnessThresholdsChanged([I[I)V
    .registers 5

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2096
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 2098
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 2099
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    goto :goto_2b

    .line 2102
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 2104
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700df

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 2107
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public onDeviceConfigLowBrightnessThresholdsChanged([I[I)V
    .registers 5

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2073
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 2075
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 2076
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    goto :goto_2b

    .line 2079
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107008b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 2081
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070073

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 2084
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public onDeviceConfigRefreshRateInHighZoneChanged(I)V
    .registers 3

    .line 2111
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-eq p1, v0, :cond_9

    .line 2112
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_9
    return-void
.end method

.method public onDeviceConfigRefreshRateInLowZoneChanged(I)V
    .registers 3

    .line 2088
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-eq p1, v0, :cond_9

    .line 2089
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_9
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    if-nez p1, :cond_4a

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateDefaultDisplayState()V

    .line 2205
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateDefaultDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Z

    .line 2209
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result p1

    .line 2210
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2212
    :try_start_15
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->consumePassiveMode()Z

    move-result v1

    .line 2216
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v2, :cond_3c

    .line 2217
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    const/4 v3, 0x0

    if-nez v2, :cond_28

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-ne v2, p1, :cond_2d

    :cond_28
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2f

    :cond_2d
    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    if-eqz v2, :cond_34

    .line 2221
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    :cond_34
    if-nez v1, :cond_38

    if-eqz v2, :cond_45

    .line 2224
    :cond_38
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked(ZZ)V

    goto :goto_45

    .line 2228
    :cond_3c
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-eq p1, v1, :cond_45

    .line 2229
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 2230
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2232
    :cond_45
    :goto_45
    monitor-exit v0

    goto :goto_4a

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .registers 3

    .line 2065
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_9

    .line 2066
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_9
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .registers 4

    sub-float p1, p2, p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_10

    const/high16 p1, 0x42700000    # 60.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 2053
    :goto_11
    iget-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq p2, p1, :cond_2a

    .line 2054
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    if-nez p1, :cond_2a

    .line 2058
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2059
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 p1, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    :cond_2a
    return-void
.end method

.method public registerLightSensor(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;)V
    .registers 5

    .line 1949
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1950
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 1952
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const v1, 0x3d090

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method public final restartObserver()V
    .registers 8

    .line 2237
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    const/4 v1, 0x0

    if-lez v0, :cond_16

    .line 2238
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2240
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    goto :goto_1a

    .line 2243
    :cond_16
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2244
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 2247
    :goto_1a
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_2f

    .line 2248
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2250
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    goto :goto_33

    .line 2253
    :cond_2f
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2254
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 2258
    :goto_33
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    .line 2259
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 2263
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_44

    goto :goto_4a

    .line 2302
    :cond_44
    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2303
    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    goto/16 :goto_bf

    .line 2264
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x104033c

    .line 2265
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 2270
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 2271
    :goto_65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_80

    .line 2272
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 2273
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    move-object v2, v5

    goto :goto_80

    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 2281
    :cond_80
    :goto_80
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_a4

    if-nez v2, :cond_a4

    .line 2282
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x1004e

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 2283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 2284
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/Sensor;

    goto :goto_a4

    :cond_9d
    const-string v0, "DisplayModeDirector"

    const-string v1, "Failed get SEM_TYPE_LIGHT_SEAMLESS"

    .line 2286
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    :goto_a4
    if-nez v2, :cond_ad

    .line 2292
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    :cond_ad
    if-eqz v2, :cond_bf

    .line 2296
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    .line 2298
    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2299
    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 2306
    :cond_bf
    :goto_bf
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_d5

    .line 2307
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2308
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2309
    :try_start_cd
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2310
    monitor-exit v0

    goto :goto_d5

    :catchall_d2
    move-exception p0

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d2

    throw p0

    :cond_d5
    :goto_d5
    return-void
.end method

.method public setDefaultDisplayState(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2514
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_25

    .line 2515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    if-eq v0, p1, :cond_2e

    .line 2520
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 2521
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_2e
    return-void
.end method

.method public final setLfdValue(Ljava/lang/String;I)V
    .registers 5

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWirelessCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mIsWirelessCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2382
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .line 2044
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2047
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 2048
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->setLoggingEnabled(Z)V

    return-void
.end method

.method public final sysfsWrite(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2775
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 2780
    :cond_c
    :try_start_c
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_26

    .line 2781
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 2782
    :try_start_18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_26

    goto :goto_2a

    :catchall_1c
    move-exception p0

    .line 2780
    :try_start_1d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    :try_start_22
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 2783
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public final updateDefaultDisplayState()V
    .registers 3

    .line 2503
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 2504
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 2509
    :cond_12
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    return-void
.end method

.method public final updatePassiveLocked(ZZ)V
    .registers 4

    .line 2392
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS_PLUS:Z

    if-eqz v0, :cond_6

    if-nez p2, :cond_10

    :cond_6
    iget p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2393
    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isPassiveModeLocked(IF)Z

    move-result p2

    if-eqz p2, :cond_12

    :cond_10
    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    .line 2394
    :goto_13
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    if-ne p2, v0, :cond_19

    if-eqz p1, :cond_69

    .line 2395
    :cond_19
    iput-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mPassive:Z

    .line 2396
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmChangePassviceModeByDisplayToken(Lcom/android/server/display/DisplayModeDirector;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPassiveMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", brightness="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lux="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mRequestedPassive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmRequestedPassive(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayModeDirector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mnotifyRefreshRateModeLocked(Lcom/android/server/display/DisplayModeDirector;)Z

    .line 2401
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    invoke-virtual {p0, p2}, Lcom/android/server/display/RefreshRateTokenController;->updateRefreshRateMaxLimitTokenLocked(Z)V

    :cond_69
    return-void
.end method

.method public final updateSensorStatus()V
    .registers 6

    .line 2526
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_a

    goto/16 :goto_c2

    .line 2530
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_54

    const-string v0, "DisplayModeDirector"

    .line 2531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldObserveAmbientHighChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DisplayModeDirector"

    .line 2534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRefreshRateChangeable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_54
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_93

    .line 2540
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDeviceActive()Z

    move-result v0

    if-eqz v0, :cond_93

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v0, :cond_70

    .line 2542
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    move-result v0

    if-nez v0, :cond_74

    :cond_70
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v0, :cond_93

    :cond_74
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_93

    .line 2546
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2548
    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_c2

    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: registerListener"

    .line 2549
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 2552
    :cond_93
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 2553
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2556
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_b6

    const/high16 v0, -0x40800000    # -1.0f

    .line 2557
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2558
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2559
    :try_start_ae
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2560
    monitor-exit v0

    goto :goto_b6

    :catchall_b3
    move-exception p0

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_b3

    throw p0

    .line 2564
    :cond_b6
    :goto_b6
    iget-boolean p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_c2

    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: unregisterListener"

    .line 2565
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    return-void
.end method
