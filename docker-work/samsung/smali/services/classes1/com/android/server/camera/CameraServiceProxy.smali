.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;,
        Lcom/android/server/camera/CameraServiceProxy$TaskInfo;,
        Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;,
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;,
        Lcom/android/server/camera/CameraServiceProxy$DeviceStateFlags;
    }
.end annotation


# static fields
.field public static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field public static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field public static final MAX_PREVIEW_FPS:F = 60.0f

.field public static final MAX_STREAM_STATISTICS:I = 0x5

.field public static final MAX_USAGE_HISTORY:I = 0x14

.field public static final MIN_PREVIEW_FPS:F = 30.0f

.field public static final MSG_NOTIFY_DEVICE_STATE:I = 0x2

.field public static final MSG_SWITCH_USER:I = 0x1

.field public static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field public static final NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

.field public static final NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

.field public static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field public static final OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK:J = 0xb6a427eL

.field public static final OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS:J = 0xb476b84L

.field public static final REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

.field public static final RETRY_DELAY_TIME:I = 0x14

.field public static final RETRY_TIMES:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field public static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

.field public mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLastReportedDeviceState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastUser:I

.field public final mLock:Ljava/lang/Object;

.field public mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNfcBlockCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifyNfc:Z

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$xKzwSr6VW_ozKS_nbX2lh0LGArc(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCameraServiceRawLocked(Lcom/android/server/camera/CameraServiceProxy;)Landroid/hardware/ICameraService;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceStateWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySwitchWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/camera/CameraServiceProxy;->notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateActivityCount(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Landroid/hardware/CameraSessionStats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcameraFacingToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcameraStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 219
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const-string v0, "com.samsung.android.smartface"

    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v2, "com.samsung.android.visionintelligence"

    const-string v3, "com.samsung.android.visionarapps"

    .line 228
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    const-string v2, "client.pid<"

    .line 236
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    .line 242
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 623
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 351
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener-IA;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 362
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 624
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 625
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 626
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 627
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "ro.camera.notify_nfc"

    .line 629
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_62

    move v4, v1

    :cond_62
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 632
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 635
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    invoke-direct {v0, p1, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

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

.method public static cameraHistogramTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const-string p0, "HISTOGRAM_TYPE_UNKNOWN"

    return-object p0

    :cond_6
    const-string p0, "HISTOGRAM_TYPE_CAPTURE_LATENCY"

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

.method public static getCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;IIZ)I
    .registers 13

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    const-string v2, "CameraService_proxy"

    if-eqz p4, :cond_26

    if-eq p4, v1, :cond_26

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "lensFacing="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Crop-rotate-scale is disabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_26
    if-nez p5, :cond_38

    .line 427
    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_38

    iget-boolean p0, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    if-eqz p0, :cond_38

    const-string p0, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    .line 429
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 435
    :cond_38
    iget-boolean p0, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    if-nez p0, :cond_46

    iget-boolean p0, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    if-nez p0, :cond_46

    const-string p0, "Non-fixed orientation activity. Crop-rotate-scale is disabled."

    .line 436
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_46
    const/16 p0, 0x10e

    const/16 p1, 0xb4

    const/16 p5, 0x5a

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p3, :cond_71

    if-eq p3, v1, :cond_6f

    if-eq p3, v4, :cond_6d

    if-eq p3, v3, :cond_6b

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported display rotation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6b
    move p3, p0

    goto :goto_72

    :cond_6d
    move p3, p1

    goto :goto_72

    :cond_6f
    move p3, p5

    goto :goto_72

    :cond_71
    move p3, v0

    .line 459
    :goto_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display.getRotation()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isFixedOrientationPortrait="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFixedOrientationLandscape="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_9d

    return v0

    :cond_9d
    if-nez p4, :cond_a1

    rsub-int p3, p3, 0x168

    :cond_a1
    if-eq p3, p5, :cond_aa

    if-eq p3, p1, :cond_a9

    if-eq p3, p0, :cond_a8

    return v0

    :cond_a8
    return v3

    :cond_a9
    return v4

    :cond_aa
    return v1
.end method

.method public static isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 399
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_13

    const/16 p1, 0x17

    if-gt p0, p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :catch_13
    const-string p0, "CameraService_proxy"

    const-string p1, "Package name not found!"

    .line 402
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .registers 3

    .line 636
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_b

    .line 637
    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->setDeviceStateFlags(I)V

    goto :goto_e

    .line 639
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->clearDeviceStateFlags(I)V

    :goto_e
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1235
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1236
    new-array v0, v0, [I

    .line 1238
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_b

    :cond_21
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string v0, "CameraService_proxy"

    const-string v1, "Native camera service has died"

    .line 767
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 769
    :try_start_b
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 773
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 774
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 775
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 777
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_35

    if-nez v1, :cond_35

    const-string v1, "CameraService_proxy"

    const-string v2, "Notify nfc service : camera service has died. start polling."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 778
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 782
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw p0
.end method

.method public canNotifyToNfcService(Ljava/lang/String;)Z
    .registers 10

    .line 1286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    if-nez p1, :cond_b

    .line 1304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 1290
    :cond_b
    :try_start_b
    sget-object v3, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v4, :cond_21

    aget-object v7, v3, v6

    .line 1291
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4b

    if-eqz v7, :cond_1e

    .line 1304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1295
    :cond_21
    :try_start_21
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 1296
    sget-object p0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    array-length v3, p0

    move v4, v5

    :goto_36
    if-ge v4, v3, :cond_47

    aget-object v6, p0, v4

    .line 1297
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_4b

    if-eqz v6, :cond_44

    .line 1304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_4b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1305
    throw p0
.end method

.method public final clearDeviceStateFlags(I)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 678
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq p1, v1, :cond_18

    const/16 p1, 0x3c

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 681
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public dumpUsageEvents()V
    .registers 6

    .line 913
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 916
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;-><init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 919
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 920
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_31

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 923
    :try_start_23
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 925
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    throw p0

    :catchall_31
    move-exception p0

    .line 920
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getCameraServiceRawLocked()Landroid/hardware/ICameraService;
    .registers 4

    .line 931
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v0, :cond_22

    const-string/jumbo v0, "media.camera"

    .line 932
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const/4 v2, 0x0

    .line 937
    :try_start_10
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_1a

    .line 943
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_22

    :catch_1a
    const-string p0, "CameraService_proxy"

    const-string v0, "Could not link to death of native camera service"

    .line 939
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 945
    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    return-object p0
.end method

.method public final getEnabledUserHandles(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 959
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0

    .line 960
    new-instance p1, Landroid/util/ArraySet;

    array-length v0, p0

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 962
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    aget v2, p0, v1

    .line 963
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object p1
.end method

.method public final getMinFps(Landroid/hardware/CameraSessionStats;)F
    .registers 2

    .line 1075
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    move-result p0

    const/high16 p1, 0x42700000    # 60.0f

    .line 1076
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 686
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    .line 694
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraServiceProxy error, invalid message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_proxy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 691
    :cond_21
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    goto :goto_2c

    .line 688
    :cond_27
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    :goto_2c
    return v1
.end method

.method public needRefreshRateControl(Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 1311
    :cond_4
    sget-object v0, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 1312
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    return v2

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return p0
.end method

.method public final notifyCameraserverLocked(ILjava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_f

    const-string p0, "Could not notify cameraserver, camera service not available."

    .line 995
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1000
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final notifyDeviceStateChangeLocked(I)Z
    .registers 3

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    if-nez v0, :cond_f

    const-string p0, "CameraService_proxy"

    const-string p1, "Could not notify cameraserver, camera service not available."

    .line 1031
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1044
    :cond_f
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyDeviceStateWithRetries(I)V
    .registers 3

    .line 1010
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 1012
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final notifyDeviceStateWithRetriesLocked(I)V
    .registers 5

    .line 1016
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateChangeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-gtz p1, :cond_c

    return-void

    :cond_c
    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    .line 1022
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final notifyNfcService(Z)V
    .registers 5

    const-string/jumbo v0, "nfc"

    .line 1219
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "CameraService_proxy"

    if-nez p0, :cond_11

    const-string p0, "Could not connect to NFC service to notify it of camera state"

    .line 1221
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1224
    :cond_11
    invoke-static {p0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object p0

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    goto :goto_1b

    :cond_19
    const/16 p1, 0x1000

    .line 1228
    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1, v2}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception p0

    .line 1230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not notify NFC service, remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method public final notifySwitchWithRetries(I)V
    .registers 3

    .line 970
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 972
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final notifySwitchWithRetriesLocked(I)V
    .registers 6

    .line 976
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move p1, v2

    :cond_e
    if-gtz p1, :cond_11

    return-void

    :cond_11
    const-string v0, "CameraService_proxy"

    const-string v3, "Could not notify camera service of user switch, retrying..."

    .line 985
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z
    .registers 7

    .line 1050
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_15

    const-string p0, "Could not notify cameraserver, camera service not available."

    .line 1056
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    if-eqz p2, :cond_19

    const/4 p2, 0x2

    goto :goto_1a

    :cond_19
    const/4 p2, 0x3

    .line 1063
    :goto_1a
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const/4 v0, 0x1

    new-array v3, v0, [I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    aput p1, v3, v1

    invoke-interface {p0, p2, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_28} :catch_29

    return v0

    :catch_29
    move-exception p0

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return v1
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3e

    .line 727
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 730
    :try_start_9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 731
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 732
    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 733
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->onDisplayAdded(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :catch_21
    const-string p1, "CameraService_proxy"

    const-string v0, "Failed to register display window listener!"

    .line 736
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_28
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 740
    invoke-virtual {p1, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_3e
    return-void
.end method

.method public onStart()V
    .registers 4

    const-string v0, "CameraService_proxy"

    const-string v1, "CameraServiceProxy is started."

    .line 702
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_4e

    .line 710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 711
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 712
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    .line 713
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 714
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 716
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 717
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 720
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string/jumbo v1, "media.camera.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 721
    const-class v0, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 706
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 746
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_e

    .line 750
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 752
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 757
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 758
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 759
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final setDeviceStateFlags(I)V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 658
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq p1, v1, :cond_17

    const/16 p1, 0x3c

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 661
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final switchUserLocked(I)V
    .registers 3

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 950
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 951
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz p1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 953
    :cond_10
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/16 p1, 0x3c

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    :cond_17
    return-void
.end method

.method public final updateActivityCount(Landroid/hardware/CameraSessionStats;)V
    .registers 33

    move-object/from16 v0, p0

    .line 1080
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    move-result-object v11

    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v2

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v4

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    move-result-object v12

    .line 1084
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    move-result v6

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    move-result v7

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    move-result v10

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    move-result v14

    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    move-result v9

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    move-result-wide v15

    .line 1090
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    move-result-wide v17

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    move-result v19

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    move-result-object v27

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    move-result-object v21

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    move-result v22

    .line 1095
    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1097
    :try_start_43
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_228

    const/4 v3, 0x2

    const/4 v13, 0x3

    const/16 v30, 0x0

    move-object/from16 v23, v8

    const/4 v8, 0x1

    if-eqz v2, :cond_1a5

    if-eq v2, v8, :cond_fa

    if-eq v2, v3, :cond_64

    if-eq v2, v13, :cond_5f

    move v15, v5

    move/from16 v16, v8

    move-object/from16 v17, v23

    goto/16 :goto_1ec

    .line 1162
    :cond_5f
    :try_start_5f
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_64
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v3, :cond_c4

    move v8, v13

    move-object v13, v3

    move-object/from16 v20, v27

    .line 1169
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;I)V

    .line 1172
    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v30

    .line 1177
    :goto_7c
    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v3, v13, :cond_99

    .line 1178
    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v13, v13, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_96

    const/4 v3, 0x1

    goto :goto_9b

    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_99
    move/from16 v3, v30

    :goto_9b
    if-nez v3, :cond_c5

    .line 1185
    invoke-virtual {v0, v12}, Lcom/android/server/camera/CameraServiceProxy;->needRefreshRateControl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 1187
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    const-string v3, "CameraService_proxy"

    .line 1188
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wmi.removeRefreshRateRangeForPackage clientName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    goto :goto_c5

    :cond_c4
    move v8, v13

    :cond_c5
    :goto_c5
    if-ne v2, v8, :cond_de

    .line 1194
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_c9
    .catchall {:try_start_5f .. :try_end_c9} :catchall_f5

    const/4 v13, 0x2

    move-object v2, v1

    const/4 v14, 0x2

    move-object v3, v11

    move v15, v5

    move-object v5, v12

    move v11, v8

    move-object/from16 v17, v23

    const/16 v16, 0x1

    move v8, v13

    :try_start_d5
    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    .line 1198
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_de
    move v15, v5

    move v11, v8

    move-object/from16 v17, v23

    const/4 v14, 0x2

    const/16 v16, 0x1

    .line 1201
    :goto_e5
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_f2

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    :cond_f2
    move v13, v11

    goto/16 :goto_1ec

    :catchall_f5
    move-exception v0

    move-object/from16 v17, v23

    goto/16 :goto_22b

    :cond_fa
    move v14, v3

    move v15, v5

    move/from16 v16, v8

    move-object/from16 v17, v23

    move/from16 v2, v30

    .line 1128
    :goto_102
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_120

    .line 1129
    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v3, v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    move/from16 v8, v16

    goto :goto_122

    :cond_11d
    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    :cond_120
    move/from16 v8, v30

    :goto_122
    if-nez v8, :cond_160

    .line 1136
    invoke-virtual {v0, v12}, Lcom/android/server/camera/CameraServiceProxy;->needRefreshRateControl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 1138
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 1139
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/camera/CameraServiceProxy;->getMinFps(Landroid/hardware/CameraSessionStats;)F

    move-result v2

    const-string v3, "CameraService_proxy"

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wmi.addRefreshRateRangeForPackage minFPS = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", maxFPS = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v8, 0x42700000    # 60.0f

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", clientName = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v1, v12, v2, v8}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    .line 1146
    :cond_160
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v8, 0x3

    move-object v2, v1

    move-object v3, v11

    move-object v5, v12

    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    .line 1150
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v1, :cond_1ec

    const-string v2, "CameraService_proxy"

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was already marked as active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-string v28, ""

    const/16 v29, -0x1

    move-object/from16 v20, v1

    .line 1153
    invoke-virtual/range {v20 .. v29}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;I)V

    .line 1156
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ec

    :cond_1a5
    move v15, v5

    move/from16 v16, v8

    move-object/from16 v17, v23

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_1d3

    if-nez v4, :cond_1bd

    const-string v2, "back"

    goto :goto_1bf

    :cond_1bd
    const-string v2, "front"

    .line 1110
    :goto_1bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraFacing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1113
    :cond_1d3
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v8, 0x1

    move-object v2, v1

    move-object v3, v11

    move-object v5, v12

    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    .line 1117
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-virtual {v0, v12}, Lcom/android/server/camera/CameraServiceProxy;->canNotifyToNfcService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 1120
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    :cond_1ec
    :goto_1ec
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1209
    iget-boolean v2, v0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_226

    if-eq v15, v1, :cond_226

    const-string v2, "CameraService_proxy"

    const-string v3, "Notify nfc service : camera open was(%b) -> now(%b) = polling(%b)"

    new-array v4, v13, [Ljava/lang/Object;

    if-nez v15, :cond_203

    move/from16 v8, v16

    goto :goto_205

    :cond_203
    move/from16 v8, v30

    .line 1210
    :goto_205
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v30

    if-nez v1, :cond_20f

    move/from16 v30, v16

    :cond_20f
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v16

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 1214
    :cond_226
    monitor-exit v17

    return-void

    :catchall_228
    move-exception v0

    move-object/from16 v17, v8

    :goto_22b
    monitor-exit v17
    :try_end_22c
    .catchall {:try_start_d5 .. :try_end_22c} :catchall_22d

    throw v0

    :catchall_22d
    move-exception v0

    goto :goto_22b
.end method
