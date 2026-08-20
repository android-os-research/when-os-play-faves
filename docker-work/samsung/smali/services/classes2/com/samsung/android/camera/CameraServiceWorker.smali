.class public Lcom/samsung/android/camera/CameraServiceWorker;
.super Lcom/android/server/SystemService;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;,
        Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;,
        Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;,
        Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;,
        Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;,
        Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;,
        Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;
    }
.end annotation


# static fields
.field public static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_WORKER_BINDER_NAME:Ljava/lang/String; = "media.camera.worker"

.field public static final DEBUG:Z

.field public static final DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

.field public static final DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

.field public static final DEVICE_STATE_BACK_COVERED:J = 0x1L

.field public static final DEVICE_STATE_FOLDED:J = 0x4L

.field public static final DEVICE_STATE_FRONT_COVERED:J = 0x2L

.field public static final DEVICE_STATE_NORMAL:J = 0x0L

.field public static final DMA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final EVENT_END_3RD_CAMERA:Ljava/lang/String; = "7502"

.field public static final EVENT_INTENT_CAPTURE_MAX_RES_3RD_CAMERA:Ljava/lang/String; = "7506"

.field public static final EVENT_INTENT_PRECAPTURE_TRIGGER_3RD_CAMERA:Ljava/lang/String; = "7505"

.field public static final EVENT_INTENT_PREVIEW_MAX_RES_3RD_CAMERA:Ljava/lang/String; = "7504"

.field public static final EVENT_INTENT_VIDEO_DUR_3RD_CAMERA:Ljava/lang/String; = "7508"

.field public static final EVENT_INTENT_VIDEO_MAX_RES_3RD_CAMERA:Ljava/lang/String; = "7507"

.field public static final EVENT_LENS_ID_3RD_CAMERA:Ljava/lang/String; = "7503"

.field public static final EVENT_START_3RD_CAMERA:Ljava/lang/String; = "7501"

.field public static final MSG_DEVICE_CHANGE:I = 0x3

.field public static final RETRY_DELAY_TIME:I = 0x14

.field public static final RETRY_TIMES:I = 0x1e

.field public static final SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "CameraService_worker"

.field public static final TRACKING_ID:Ljava/lang/String; = "4K3-399-1014897"


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mBootCompleteReceiver:Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

.field public mBootCompleted:Z

.field public mCPRCommandReceiver:Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

.field public final mContext:Landroid/content/Context;

.field public mDeviceInjectorRequirementChecker:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

.field public mDeviceState:J

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

.field public final mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

.field public final mEnableSurveyMode:Z

.field public mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mIsCameraOpened:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOpenCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

.field public final mOrientationLock:Ljava/lang/Object;

.field public mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

.field public final mServiceLock:Ljava/lang/Object;

.field public mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

.field public mVisionServerReceiver:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

.field public mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCameraOpened(Lcom/samsung/android/camera/CameraServiceWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrientationEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrientationLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestInjectorService(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/RequestInjectorService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShakeEventListener(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/ShakeEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVisionServerReceiver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/visionserver/VisionServerReceiver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVisionServerReceiver:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVtCameraProviderObserver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/samsung/android/camera/CameraServiceWorker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceChangeRetryLocked(Lcom/samsung/android/camera/CameraServiceWorker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateActivityCount(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/camera/CameraServiceWorker;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEVICE_INJECTOR_TEST_PACKAGES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcameraFacingToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcameraStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    const-string v0, "com.sec.android.app.camera"

    const-string v1, "com.samsung.android.smartface"

    const-string v2, "com.samsung.adaptivebrightnessgo"

    .line 161
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    const-string v0, "com.samsung.android.camera.test"

    const-string v1, "injector.test"

    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    const-string v0, "injector.test.phone"

    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 138
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 187
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    .line 196
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    .line 265
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener-IA;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    .line 330
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 368
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$1;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 392
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$2;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 419
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$3;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    .line 778
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 779
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_worker"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 780
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 781
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 783
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    .line 784
    sget-boolean v3, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v3, :cond_95

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable survey mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->isEnableSurveyMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_95
    new-instance v2, Lcom/samsung/android/camera/ShakeEventListener;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/camera/ShakeEventListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    .line 788
    new-instance v2, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 789
    new-instance v2, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 791
    new-instance v0, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVisionServerReceiver:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    .line 792
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleteReceiver:Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    .line 793
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCPRCommandReceiver:Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;

    return-void
.end method

.method public static cameraFacingToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "CAMERA_FACING_UNKNOWN"

    return-object p0

    :cond_b
    const-string p0, "CAMERA_FACING_EXTERNAL"

    return-object p0

    :cond_e
    const-string p0, "CAMERA_FACING_FRONT"

    return-object p0

    :cond_11
    const-string p0, "CAMERA_FACING_BACK"

    return-object p0
.end method

.method public static cameraStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, "CAMERA_STATE_UNKNOWN"

    return-object p0

    :cond_e
    const-string p0, "CAMERA_STATE_CLOSED"

    return-object p0

    :cond_11
    const-string p0, "CAMERA_STATE_IDLE"

    return-object p0

    :cond_14
    const-string p0, "CAMERA_STATE_ACTIVE"

    return-object p0

    :cond_17
    const-string p0, "CAMERA_STATE_OPEN"

    return-object p0
.end method

.method public static getTaskInfo(Ljava/lang/String;I)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
    .registers 8

    const-string v0, "CameraService_worker"

    const/4 v1, 0x0

    .line 1076
    :try_start_3
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_85

    if-eqz p1, :cond_7f

    .line 1082
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1083
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1084
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_21

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1085
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    invoke-direct {p1}, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;-><init>()V

    .line 1086
    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v3, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    .line 1087
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v5, :cond_49

    const/4 v4, 0x1

    :cond_49
    iput-boolean v4, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    .line 1088
    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v4, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 1089
    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v4, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    .line 1090
    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v3

    iput-boolean v3, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    .line 1091
    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    iput-boolean v2, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    goto :goto_67

    :cond_66
    move-object p1, v1

    :goto_67
    if-nez p1, :cond_7e

    .line 1097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recent tasks don\'t include camera client package name: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7e
    return-object p1

    :cond_7f
    const-string p0, "Recent task list is empty!"

    .line 1101
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_85
    const-string p0, "Failed to query recent tasks!"

    .line 1078
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    const-string v0, "CameraService_worker"

    const-string v1, "Native camera service has died"

    .line 848
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3d

    const/4 v2, 0x0

    .line 851
    :try_start_e
    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 852
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_3a

    .line 854
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 855
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    .line 856
    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 858
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_3d

    .line 859
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    if-eqz v2, :cond_28

    .line 860
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 862
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_37

    .line 864
    :try_start_29
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    const-string v2, "Close all camera, camera service died"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 866
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 867
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3d

    return-void

    :catchall_37
    move-exception p0

    .line 862
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3d

    :catchall_3a
    move-exception p0

    .line 852
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p0

    :catchall_3d
    move-exception p0

    .line 867
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v1, :cond_2d

    const-string v1, "media.camera"

    .line 824
    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    const-string p0, "CameraService_worker"

    const-string v1, "Could not notify mediaserver, camera service not available."

    .line 826
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_31

    return-object v2

    :cond_19
    const/4 v3, 0x0

    .line 830
    :try_start_1a
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_24
    .catchall {:try_start_1a .. :try_end_1d} :catchall_31

    .line 836
    :try_start_1d
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_2d

    :catch_24
    const-string p0, "CameraService_worker"

    const-string v1, "Could not link to death of native camera service"

    .line 832
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    monitor-exit v0

    return-object v2

    .line 839
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object p0

    :catchall_31
    move-exception p0

    .line 840
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_31

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 798
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const-string p0, "CameraService_worker"

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraServiceWorker error, invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 800
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_21
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 802
    monitor-exit v0

    :goto_27
    const/4 p0, 0x1

    return p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    .line 1037
    sget-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertDMALog: trackingId=4K3-399-1014897, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_2a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4K3-399-1014897"

    .line 1040
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 1041
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_43

    const-string p1, "extra"

    .line 1043
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    if-eqz p3, :cond_4f

    .line 1046
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-string/jumbo p3, "value"

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4f
    const-string/jumbo p1, "type"

    const-string p2, "ev"

    .line 1048
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "pkg_name"

    const-string p2, "com.samsung.android.camera"

    .line 1049
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 1052
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "com.sec.android.diagmonagent"

    .line 1054
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1057
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1058
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public isCameraOpened()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-boolean p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isEnableSurveyMode()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    return p0
.end method

.method public isSamsungCameraApp(Ljava/lang/String;)Z
    .registers 6

    .line 1062
    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 1063
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public notifyDeviceChange(J)V
    .registers 4

    .line 909
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    iput-wide p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    const/16 p1, 0x1e

    .line 911
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 912
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public notifyDeviceChangeLocked(J)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    const-string v0, "CameraService_worker"

    if-nez p0, :cond_19

    .line 937
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "Could not notify mediaserver, camera service not available."

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 938
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_19
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 942
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotifyDeviceStateChange 0x%X, sync(%b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_39

    .line 945
    :try_start_35
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChangeSync(J)V

    goto :goto_3c

    .line 947
    :cond_39
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_52

    .line 956
    :goto_3c
    new-instance p0, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "NotifyDeviceStateChange success: 0x%X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_52
    move-exception p0

    .line 950
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not notify device state change, remote exception: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 951
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final notifyDeviceChangeRetryLocked(I)V
    .registers 5

    .line 916
    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move p1, v1

    :cond_12
    if-gtz p1, :cond_15

    return-void

    :cond_15
    const-string v0, "CameraService_worker"

    const-string v2, "Could not notify camera service of device state change, retrying..."

    .line 922
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1f

    const-string/jumbo p1, "window"

    .line 873
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 874
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    goto :goto_84

    :cond_1f
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_53

    .line 885
    :try_start_23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 886
    :goto_2e
    array-length v1, p1

    if-ge v0, v1, :cond_42

    .line 887
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;->onDisplayAdded(I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_38} :catch_3b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catch_3b
    const-string p1, "CameraService_worker"

    const-string v0, "Failed to register display window listener!"

    .line 890
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_45
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 894
    monitor-exit v0

    goto :goto_84

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    const/16 v0, 0x258

    if-ne p1, v0, :cond_84

    .line 896
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    invoke-virtual {p1}, Lcom/samsung/android/camera/ShakeEventListener;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_6c

    const-string p1, "CameraService_worker"

    const-string v0, "Shake event is supported. Register listener."

    .line 897
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    invoke-virtual {p1}, Lcom/samsung/android/camera/ShakeEventListener;->start()V

    goto :goto_73

    :cond_6c
    const-string p1, "CameraService_worker"

    const-string v0, "Shake event is not supported."

    .line 900
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_73
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-virtual {p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->tryRegisterCameraOpenListener()V

    .line 903
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVisionServerReceiver:Lcom/samsung/android/camera/visionserver/VisionServerReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/camera/visionserver/VisionServerReceiver;->tryRegisterCameraOpenListener()V

    .line 904
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceInjectorRequirementChecker:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    :cond_84
    :goto_84
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "CameraService_worker"

    const-string v1, "CameraServiceWorker is started."

    .line 815
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    const-string v1, "media.camera.worker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 818
    const-class v0, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 12

    .line 961
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_6e

    if-eq p2, v3, :cond_63

    if-eq p2, v2, :cond_5d

    const/4 p5, 0x3

    if-eq p2, p5, :cond_27

    :try_start_f
    const-string p1, "CameraService_worker"

    .line 998
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Non acceptable state "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    .line 987
    :cond_27
    iget-boolean p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    if-eqz p2, :cond_41

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->isEnableSurveyMode()Z

    move-result p2

    if-eqz p2, :cond_41

    invoke-virtual {p0, p4}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_41

    const-string p2, "7502"

    int-to-long v4, p3

    .line 988
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p2, p4, p3}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    :cond_41
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object p2, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    const-string p3, "Close camera(%s) for %s"

    new-array p5, v2, [Ljava/lang/Object;

    aput-object p1, p5, v1

    aput-object p4, p5, v3

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 992
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 995
    :cond_5d
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 978
    :cond_63
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v2, p3, p4, p5}, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 964
    :cond_6e
    iget-boolean p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    if-eqz p2, :cond_88

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->isEnableSurveyMode()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-virtual {p0, p4}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_88

    const-string p2, "7501"

    int-to-long v4, p3

    .line 965
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, p2, p4, v4}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 974
    :cond_88
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    new-instance v4, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v4, p3, p4, p5}, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p2, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object p2, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    const-string p3, "Open camera(%s) for %s"

    new-array p5, v2, [Ljava/lang/Object;

    aput-object p1, p5, v1

    aput-object p4, p5, v3

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 1002
    :goto_a3
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ac

    move v1, v3

    :cond_ac
    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 1003
    monitor-exit v0

    return-void

    :catchall_b0
    move-exception p0

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_f .. :try_end_b2} :catchall_b0

    throw p0
.end method
