.class public Lcom/samsung/android/gesture/AutoRotationHandler;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;,
        Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;,
        Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;,
        Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;,
        Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LANDSCAPE_PRIORITY:F = 1.0f

.field private static final MSG_CAMERA_STARTED:I = 0x1e

.field private static final MSG_CAMERA_STOPPED:I = 0x1f

.field private static final MSG_DISTINGUISH_APP_PREFERENCE:I = 0x9

.field private static final MSG_MEDIA_SESSION_STARTED:I = 0x28

.field private static final MSG_MEDIA_SESSION_STOPPED:I = 0x29

.field private static final MSG_MEDIA_STARTED:I = 0x14

.field private static final MSG_MEDIA_STOPPED:I = 0x15

.field private static final MSG_START:I = 0x1

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final NOT_SUPPORTED:I = 0x0

.field private static final PORTRAIT_PRIORITY:F = 0.0f

.field private static final SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoRotationHandler"

.field private static support8InchOverTablet:I

.field private static supportTablet:I


# instance fields
.field private final LANDSCAPE_PREFERRED_APPS_PKG:[Ljava/lang/String;

.field public final SET_LANDSCAPE_PREFERRED_APPS_PKG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraRunning:Z

.field private isLandscapeAppRunning:Z

.field private isMediaSessionPlaying:Z

.field private isMultimediaRunning:Z

.field private mCameraStateMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

.field private mCurrMode:F

.field private mForegroundAppWatcher:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

.field private mHandler:Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

.field private mMediaSessionMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

.field private mMultimediaMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mHandler:Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaSessionMonitor(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mMediaSessionMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisCameraRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isCameraRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLandscapeAppRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isLandscapeAppRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMediaSessionPlaying(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMediaSessionPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMultimediaRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMultimediaRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartMonitoring(Lcom/samsung/android/gesture/AutoRotationHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler;->handleStartMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler;->updateAutoRotationMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/gesture/AutoRotationHandler;->supportTablet:I

    .line 68
    sput v0, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mHandler:Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    .line 74
    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mForegroundAppWatcher:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->isLandscapeAppRunning:Z

    .line 78
    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mMultimediaMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    .line 79
    iput-boolean v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMultimediaRunning:Z

    .line 81
    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mCameraStateMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    .line 82
    iput-boolean v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->isCameraRunning:Z

    .line 84
    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mMediaSessionMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    .line 85
    iput-boolean v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMediaSessionPlaying:Z

    .line 90
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.gallery3d"

    const-string v7, "com.netflix.mediaclient"

    const-string v8, "net.cj.cjhv.gs.tving"

    const-string v9, "com.frograms.wplay"

    const-string v10, "com.disney.disneyplus"

    const-string v11, "com.nhn.android.nmap"

    const-string v12, "com.google.android.apps.maps"

    const-string v13, "com.skt.tmap.ku"

    const-string v14, "com.skt.skaf.l001mtm091"

    const-string v15, "com.tmapforkia.android"

    const-string v16, "com.skplanet.tmaptaxi"

    const-string v17, "net.daum.android.map"

    const-string v18, "kt.navi"

    const-string v19, "com.lguplus.navi"

    const-string v20, "com.kakao.taxi"

    const-string v21, "io.mvlchain.tada"

    const-string v22, "kr.co.vcnc.tada"

    const-string v23, "socar.Socar"

    const-string v24, "com.waze"

    const-string v25, "com.ubercab"

    const-string v26, "com.autonavi.minimap"

    const-string v27, "com.baidu.BaiduMap"

    const-string v28, "com.tencent.map"

    const-string v29, "ru.yandex"

    const-string v30, "com.samsung.android.video"

    filled-new-array/range {v4 .. v30}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->LANDSCAPE_PREFERRED_APPS_PKG:[Ljava/lang/String;

    .line 124
    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->SET_LANDSCAPE_PREFERRED_APPS_PKG:Ljava/util/Set;

    .line 127
    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mCurrMode:F

    .line 128
    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 129
    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensor:Landroid/hardware/Sensor;

    .line 130
    const-string v4, "AutoRotationHandler"

    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_84

    goto :goto_cc

    .line 137
    :cond_84
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v3, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mHandler:Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    .line 140
    new-instance v3, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mForegroundAppWatcher:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    .line 141
    invoke-virtual {v3}, Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;->init()V

    .line 142
    new-instance v3, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mMultimediaMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;

    .line 143
    invoke-virtual {v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->start()V

    .line 144
    new-instance v3, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mCameraStateMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    .line 145
    invoke-virtual {v3}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->start()V

    .line 146
    new-instance v3, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mMediaSessionMonitor:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    .line 147
    invoke-virtual {v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->start()V

    .line 162
    return-void

    .line 131
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    :cond_cc
    :goto_cc
    const-string v3, "auto rotation sensor does not support injection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v2, v0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensor:Landroid/hardware/Sensor;

    .line 133
    return-void
.end method

.method private handleStartMonitoring()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mForegroundAppWatcher:Lcom/samsung/android/gesture/AutoRotationHandler$ForegroundAppWatcher;

    if-nez v0, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler;->updateAutoRotationMode()V

    .line 178
    return-void
.end method

.method public static is8InchOverTablet()Z
    .registers 9

    .line 348
    sget v0, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4e

    .line 349
    invoke-static {}, Lcom/samsung/android/gesture/AutoRotationHandler;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 350
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v4, "display"

    invoke-virtual {v0, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 351
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_48

    .line 352
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 353
    .local v4, "display":Landroid/view/Display;
    if-eqz v4, :cond_48

    .line 354
    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    .line 355
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 356
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v6, v6

    iget v7, v5, Landroid/view/DisplayInfo;->physicalXDpi:F

    div-float/2addr v6, v7

    iget v7, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v7, v7

    iget v8, v5, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 357
    .local v6, "largeInches":F
    const/high16 v7, 0x41000000    # 8.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_48

    .line 358
    sput v3, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    .line 364
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "largeInches":F
    :cond_48
    sget v0, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    if-ne v0, v1, :cond_4e

    .line 365
    sput v2, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    .line 368
    :cond_4e
    sget v0, Lcom/samsung/android/gesture/AutoRotationHandler;->support8InchOverTablet:I

    if-ne v0, v3, :cond_53

    move v2, v3

    :cond_53
    return v2
.end method

.method public static isTablet()Z
    .registers 2

    .line 339
    sget v0, Lcom/samsung/android/gesture/AutoRotationHandler;->supportTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 341
    nop

    .line 340
    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/samsung/android/gesture/AutoRotationHandler;->supportTablet:I

    .line 343
    :cond_16
    sget v0, Lcom/samsung/android/gesture/AutoRotationHandler;->supportTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method private updateAutoRotationMode()V
    .registers 3

    .line 210
    invoke-static {}, Lcom/samsung/android/gesture/AutoRotationHandler;->is8InchOverTablet()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isLandscapeAppRunning:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMultimediaRunning:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isCameraRunning:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->isMediaSessionPlaying:Z

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 211
    .local v0, "isLandscape":Z
    :goto_1a
    if-eqz v0, :cond_1f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->setAutoRotationMode(F)V

    .line 212
    return-void
.end method


# virtual methods
.method public setAutoRotationMode(F)V
    .registers 8
    .param p1, "mode"    # F

    .line 181
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensor:Landroid/hardware/Sensor;

    const-string v1, "AutoRotationHandler"

    if-nez v0, :cond_c

    .line 182
    const-string v0, "not support this mode "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_c
    iget v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mCurrMode:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_13

    return-void

    .line 188
    :cond_13
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 189
    .local v2, "priority":[F
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 190
    const/high16 v4, 0x10000000

    invoke-static {v0, v4, v2}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    .line 191
    .local v0, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject auto rotation priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 193
    const-string v3, "injectSensorData failed "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 195
    :cond_45
    iput p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mCurrMode:F

    .line 197
    :goto_47
    return-void
.end method

.method public startMonitoring()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler;->mHandler:Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 166
    :cond_c
    return-void
.end method
