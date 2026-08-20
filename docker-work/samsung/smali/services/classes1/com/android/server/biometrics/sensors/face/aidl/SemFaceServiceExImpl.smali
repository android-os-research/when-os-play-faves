.class public Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
.super Ljava/lang/Object;
.source "SemFaceServiceExImpl.java"


# static fields
.field public static final ACTION_FACE_ADDED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_ADDED"

.field public static final ACTION_FACE_REMOVED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

.field public static final ACTION_FACE_RESET:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_RESET"

.field public static final DEFAULT_INACTIVITY_2ND_ENROLLMENT_TIMEOUT:I = 0x7530

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_LOW_ILLUMINATION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_TIMEOUT:I = 0xfa0

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_TIMEOUT:I = 0x1770

.field public static final DEFAULT_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0x7530

.field public static final ERROR_ESRCH:I = 0x3

.field public static final EXT_MATCH:I = 0x1

.field public static final EXT_NOMATCH:I = 0x2

.field public static final EXT_TIMEOUT:I = 0x3

.field public static final FACE_DAEMON_TAG_CONTROL_TIMEOUT_FOR_LOW_ILLUMINATION:I = 0x1

.field public static final MAX_EVENT_SKIP_CNT:I = 0x1e

.field public static final MSG_ACQUIRED_EMPTY:I = 0x3

.field public static final MSG_INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final MSG_PROXIMITY_SENSOR_ERROR:I = 0x4

.field public static final OPERATION_TYPE_AUTEHENTICATION:I = 0x2

.field public static final OPERATION_TYPE_ENROLLMENT:I = 0x1

.field public static final SKIP_NO_FACE_EVENT_TIME_ON_ENROLL:I = 0xbb8

.field public static final SYSTEM_PROPERTIES_IS_AUTHENTICATION:Ljava/lang/String; = "service.bioface.authenticating"

.field public static final TAG:Ljava/lang/String; = "SemFace"

.field public static final VOICE_ASSISTANT_2ND_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0xea60

.field public static final VOICE_ASSISTANT_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0xea60

.field public static final WAKE_LOCK_TIMEOUT_EXTRA:I = 0xbb8

.field public static final mIsFrameworkHandleLockout:Z = true

.field public static mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mBrightnessUp:I

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mConfirmOnMask:Z

.field public mContext:Landroid/content/Context;

.field public mDaemonIsCancelling:Z

.field public mEnrollStartTime:J

.field public mFALI:I

.field public mFALQ:I

.field public mFANM:I

.field public mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public mHandlerMain:Landroid/os/Handler;

.field public mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

.field public mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

.field public mISession:Landroid/hardware/biometrics/face/ISession;

.field public mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

.field public mInsufficient:I

.field public mIsAuthenticateResult:Z

.field public mIsCheckedTooDark:Z

.field public mIsEarlyStop:Z

.field public mIsEnrollPausing:Z

.field public mIsOperationStarted:Z

.field public mIsResetting:Z

.field public mIsTimeout:Z

.field public mLastRotation:I

.field public mNoMatchMaxCountNum:I

.field public mOperationType:I

.field public mOrientationEventListener:Landroid/view/OrientationEventListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrevAcquiredInfo:I

.field public mPrevAcquiredVendorInfo:I

.field public mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

.field public mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public mSecurityLevel:I

.field public mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public mSensorId:I

.field public mSkipAcquiredEventCount:I

.field public mStartOperationTime:J

.field public mTpaHalModeEnabled:Z

.field public mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$1LLeWbvL3B2RFB0tgTCpFf1tFPo(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;ILandroid/hardware/face/Face;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9INVQZMiu4CEUdV1iJnFkmrxzr0(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$stopOperation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GRbCSMsNN4stP9Cxc_kaO8eZ-Mo(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQnohYYkHtnak6bQEJ_czcI2IiU(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$semResetConnection$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TH7DbYfH6c03oeI7FSCiG4HFxD8(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$startOperation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$a_J-FaCP3TQG-feJq9FicC8aPh0(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$daemonCancel$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$bq0LAcF8htZVcR1juzTb0PwnTkg(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->lambda$doTemplateSyncForUser$3(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTimeout(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonCancelInternal(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSetRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSetRotation(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTimeout(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendAcquired(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 81
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 82
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 83
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 236
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 242
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 244
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    const-wide/16 v2, -0x1

    .line 245
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 247
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelling:Z

    .line 249
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 250
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 251
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 253
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 254
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 255
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 256
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 257
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 258
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 272
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .registers 5

    .line 95
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 99
    iput p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 100
    iput-object p2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 101
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 102
    sget-object p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 104
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->init()V

    .line 105
    sget-object p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    return-object p0
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 91
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    return-object v0
.end method

.method private synthetic lambda$daemonCancel$6()V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1041
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$3(I)V
    .registers 4

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    const/4 v1, -0x1

    .line 929
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V
    .registers 4

    .line 954
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V
    .registers 5

    .line 965
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 966
    invoke-virtual {p2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p2

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_1e

    :cond_18
    const/4 p2, -0x1

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    .line 968
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    :goto_1e
    return-void
.end method

.method private synthetic lambda$semResetConnection$0()V
    .registers 5

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 174
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v2, "SemFace"

    if-eqz v1, :cond_14

    .line 176
    :try_start_9
    invoke-interface {v1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    move-exception v1

    const-string/jumbo v3, "semResetConnection Exception :"

    .line 178
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_14
    :goto_14
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 183
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    if-eqz v1, :cond_25

    .line 185
    :try_start_1a
    invoke-interface {v1}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v1

    const-string/jumbo v3, "semResetConnection Exception : "

    .line 187
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_25
    :goto_25
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    return-void
.end method

.method private synthetic lambda$startOperation$1()V
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 448
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_14

    .line 449
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->registerListener()Z

    :cond_14
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "1"

    .line 451
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$stopOperation$2()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 484
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_c

    .line 485
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->unregisterListener()V

    :cond_c
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "0"

    .line 487
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final acquireDVFS(II)V
    .registers 11

    const-string v0, "SemFace"

    const-string v1, "acquireDVFS"

    .line 492
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 p0, 0x1

    if-ne p2, p0, :cond_15

    const/16 p0, 0xdb7

    goto :goto_17

    :cond_15
    const/16 p0, 0xdb8

    :goto_17
    move v4, p0

    const/16 v5, 0x8

    const-string v6, "GFACE_SERVICE"

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method public daemonAuthenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    if-nez v0, :cond_d

    const-string p0, "SemFace"

    const-string p1, "authenticate(): no ISession!"

    .line 997
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1001
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-nez v1, :cond_18

    .line 1002
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    goto :goto_2a

    .line 1004
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoRequestData()[B

    move-result-object v2

    invoke-interface {v1, p1, p2, v0, v2}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 1006
    :goto_2a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-object p0
.end method

.method public declared-synchronized daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    .registers 7

    monitor-enter p0

    .line 1033
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    if-nez p1, :cond_f

    const-string p1, "SemFace"

    const-string p2, "cancellationSignal is null"

    .line 1036
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_5b

    .line 1037
    monitor-exit p0

    return-void

    :cond_f
    if-nez p2, :cond_1b

    .line 1040
    :try_start_11
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    const/4 p2, 0x1

    .line 1044
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelling:Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_5b

    .line 1046
    :try_start_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "SemFace"

    const-string v2, "daemonCancel START"

    .line 1047
    invoke-static {p2, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-interface {p1}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V

    const-string p1, "SemFace"

    .line 1049
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "daemonCancel FINISH ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) RESULT: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_4d} :catch_4e
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5b

    goto :goto_56

    :catch_4e
    move-exception p1

    :try_start_4f
    const-string p2, "SemFace"

    const-string v0, "Failed to get biometric interface"

    .line 1051
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    const/4 p1, 0x0

    .line 1053
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelling:Z
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5b

    .line 1054
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized daemonCancelInternal()V
    .registers 3

    monitor-enter p0

    .line 1057
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 1058
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v1, :cond_17

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-nez v0, :cond_17

    const-string v0, "SemFace"

    const-string v1, "daemonCancelInternal not auth(enroll) client"

    .line 1059
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_17
    const-string v0, "SemFace"

    const-string v1, "daemonCancelInternal"

    .line 1061
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_1e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 1064
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public daemonClose()V
    .registers 9

    const-string/jumbo v0, "ms)"

    const-string v1, "SemFace"

    const-string v2, "daemonClose"

    .line 1406
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :try_start_a
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    if-nez v2, :cond_14

    const-string p0, "daemonClose: no face HAL!"

    .line 1409
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1412
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1413
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {v4}, Landroid/hardware/biometrics/face/ISession;->close()V

    .line 1414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISession.close: FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1415
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 1417
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-nez v3, :cond_46

    const-string p0, "daemonClose: no seh face HAL!"

    .line 1418
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1421
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1422
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {v5}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->close()V

    .line 1423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsehSession.close: FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_6d} :catch_6e

    goto :goto_74

    :catch_6e
    move-exception p0

    const-string v0, "IsehSession.close: "

    .line 1426
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_74
    return-void
.end method

.method public daemonEnroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-eqz v0, :cond_7a

    if-eqz p1, :cond_6f

    .line 1018
    iget-wide v2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    .line 1024
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hardwareAuthToken  id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_2b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-object p1

    .line 1019
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "daemonEnroll: hardwareAuthToken mac.length = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    array-length p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", challenge="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p1, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6f
    const-string p0, "daemonEnroll: hardwareAuthToken is null"

    .line 1015
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7a
    const-string p0, "daemonEnroll: no face HAL!"

    .line 1011
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public daemonEnumerateUser()V
    .registers 7

    .line 1213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonEnumerateUser(): no face HAL!"

    .line 1214
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "daemonEnumerateUser START"

    .line 1218
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1220
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->enumerateEnrollments()V

    .line 1221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonEnumerateUser FINISH ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonEnumerateUser: "

    .line 1223
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public daemonGenerateChallenge()V
    .registers 7

    .line 1228
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonGenerateChallenge(): no face HAL!"

    .line 1229
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "daemonGenerateChallenge START"

    .line 1233
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1235
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->generateChallenge()V

    .line 1236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonGenerateChallenge FINISH ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonGenerateChallenge: "

    .line 1238
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public daemonGetAuthenticatorId()V
    .registers 7

    .line 1273
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonGetAuthenticatorId(): no face HAL!"

    .line 1274
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "daemonGetAuthenticatorId START"

    .line 1278
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1280
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getAuthenticatorId()V

    .line 1281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonGetAuthenticatorId FINISH ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonGetAuthenticatorId: "

    .line 1283
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public final daemonGetFaceTag(I)[B
    .registers 9

    .line 1328
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const/4 v1, 0x0

    const-string v2, "SemFace"

    if-nez v0, :cond_d

    const-string p0, "daemonGetFaceTag(): no seh face HAL!"

    .line 1329
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d
    :try_start_d
    const-string v0, "getFaceTag START"

    .line 1333
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1335
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTag(I)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    move-result-object p0

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFaceTag FINISH ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_9c

    .line 1337
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->data:[B

    if-eqz v0, :cond_9c

    array-length v0, v0

    if-gtz v0, :cond_45

    goto :goto_9c

    .line 1340
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceTag: type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tagType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->type:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->data:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1342
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_8d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", data: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->data:[B

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8f

    :cond_8d
    const-string p1, ""

    :goto_8f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1340
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->data:[B

    return-object p0

    :cond_9c
    :goto_9c
    const-string p0, "daemonGetFaceTag: faceTag null or data 0"

    .line 1338
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_a1} :catch_a2

    goto :goto_bb

    :catch_a2
    move-exception p0

    .line 1346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceTag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    return-object v1
.end method

.method public final daemonGetFaceTagList()V
    .registers 7

    .line 1384
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonGetFaceTagList: no seh face HAL!"

    .line 1385
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "getFaceTagList START"

    .line 1389
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1391
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTagList()[I

    move-result-object p0

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceTagList FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5d

    .line 1393
    array-length v0, p0

    if-gtz v0, :cond_40

    goto :goto_5d

    .line 1396
    :cond_40
    array-length v0, p0

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v0, :cond_7c

    aget v3, p0, v2

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "daemonGetFaceTagList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_5d
    :goto_5d
    const-string p0, "daemonGetFaceTagList: faceTagID null or data 0"

    .line 1394
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_62} :catch_63

    goto :goto_7c

    :catch_63
    move-exception p0

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaceTagList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    return-void
.end method

.method public daemonGetFeatures()V
    .registers 7

    .line 1258
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonGetFeatures(): no face HAL!"

    .line 1259
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "daemonGetFeatures START"

    .line 1263
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1265
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getFeatures()V

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonGetFeatures FINISH ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonGetFeatures: "

    .line 1268
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public daemonGetWrappedData()V
    .registers 7

    .line 1288
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonGetWrappedData(): no seh face HAL!"

    .line 1289
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string/jumbo v0, "getWrappedData START"

    .line 1293
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1295
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getWrappedData()[B

    move-result-object p0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWrappedData FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_7a

    .line 1297
    array-length v0, p0

    if-lez v0, :cond_7a

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWrappedData size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1299
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    :cond_6a
    const-string v2, ""

    :goto_6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoResultData([B)V

    goto :goto_88

    :cond_7a
    const-string/jumbo p0, "getWrappedData : data is null or 0"

    .line 1302
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_80} :catch_81

    goto :goto_88

    :catch_81
    move-exception p0

    const-string/jumbo v0, "getWrappedData: "

    .line 1305
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_88
    return-void
.end method

.method public daemonIsSessionClose()Z
    .registers 8

    .line 1197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const/4 v1, 0x0

    const-string v2, "SemFace"

    if-nez v0, :cond_d

    const-string p0, "daemonIsSessionClose(): no face seh HAL!"

    .line 1198
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1202
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1203
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->isTAUnloaded()Z

    move-result p0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehIsTaSessionClosed FINISH ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3a} :catch_3b

    return p0

    :catch_3b
    move-exception p0

    const-string v0, "daemonIsSessionClose: "

    .line 1207
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public daemonPauseAuth()V
    .registers 7

    .line 1131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 1132
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    const-string v1, "SemFace"

    if-eqz v0, :cond_4b

    .line 1133
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-nez v0, :cond_16

    const-string p0, "daemonPauseAuth(): no face seh HAL!"

    .line 1134
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1138
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1139
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->pause()I

    move-result p0

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pause FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_44

    goto :goto_50

    :catch_44
    move-exception p0

    const-string v0, "daemonPauseAuth: "

    .line 1142
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_4b
    const-string p0, "daemonPauseAuth skipped"

    .line 1145
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

.method public daemonPauseEnroll()V
    .registers 8

    .line 1098
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonPauseEnroll(): no face seh HAL!"

    .line 1099
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1103
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {v0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->pause()I

    move-result v0

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pause FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception v0

    const-string v2, "daemonPauseEnroll: "

    .line 1107
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    const/4 v0, 0x1

    .line 1109
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    return-void
.end method

.method public daemonRemove([I)V
    .registers 8

    .line 1082
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonRemove: no face HAL!"

    .line 1083
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-wide/16 v2, 0x0

    .line 1088
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v0, "removeEnrollments START"

    .line 1089
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->removeEnrollments([I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_33

    :catch_1e
    move-exception p0

    .line 1092
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonRemove : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removeEnrollments FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms) RESULT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public daemonResumeAuth()V
    .registers 7

    .line 1150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 1151
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    const-string v1, "SemFace"

    if-eqz v0, :cond_4b

    .line 1152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-nez v0, :cond_16

    const-string p0, "daemonResumeAuth(): no face seh HAL!"

    .line 1153
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1157
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1158
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->resume()I

    move-result p0

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resume FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_44

    goto :goto_50

    :catch_44
    move-exception p0

    const-string v0, "daemonResumeAuth(auth): "

    .line 1161
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :cond_4b
    const-string p0, "daemonResumeAuth skipped"

    .line 1164
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

.method public daemonResumeEnroll()V
    .registers 8

    .line 1113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonResumeEnroll(): no face seh HAL!"

    .line 1114
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1118
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {v0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->resume()I

    move-result v0

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resume FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception v0

    const-string v2, "daemonResumeEnroll: "

    .line 1122
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    const/4 v0, 0x0

    .line 1124
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 1125
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const v0, 0xea60

    goto :goto_51

    :cond_4f
    const/16 v0, 0x7530

    .line 1127
    :goto_51
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->resumeEnrollExt(I)V

    return-void
.end method

.method public daemonRevokeChallenge(J)V
    .registers 7

    .line 1243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonRevokeChallenge(): no face HAL!"

    .line 1244
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    const-string v0, "daemonRevokeChallenge START"

    .line 1248
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1250
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V

    .line 1251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "daemonRevokeChallenge FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string p1, "daemonRevokeChallenge: "

    .line 1253
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public daemonSessionClose()V
    .registers 7

    .line 1183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonSessionClose(): no face seh HAL!"

    .line 1184
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1188
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1189
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->unloadTA()I

    move-result p0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehCloseTaSession FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonSessionClose: "

    .line 1192
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public daemonSessionOpen()V
    .registers 7

    .line 1169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonSessionOpen(): no face seh HAL!"

    .line 1170
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1174
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1175
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->loadTA()I

    move-result p0

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehOpenTaSession FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p0

    const-string v0, "daemonSessionOpen: "

    .line 1178
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public final daemonSetFaceTag(I[B)I
    .registers 8

    .line 1310
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const/4 v1, 0x0

    const-string v2, "SemFace"

    if-nez v0, :cond_d

    const-string p0, "daemonSetFaceTag(): no seh face HAL!"

    .line 1311
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1315
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFaceTag START type = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_35
    const-string v3, ""

    :goto_37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1318
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setFaceTag(I[B)I

    .line 1319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setFaceTag FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_6a} :catch_6c

    const/4 p0, 0x1

    return p0

    :catch_6c
    move-exception p0

    .line 1322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setFaceTag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final daemonSetRotation(I)V
    .registers 8

    .line 1067
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    const-string v1, "SemFace"

    if-nez v0, :cond_c

    const-string p0, "daemonSetRotation(): no face seh HAL!"

    .line 1068
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1072
    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "SetRotation START"

    .line 1073
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getRotationValue(I)I

    move-result p0

    invoke-interface {v0, p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setRotation(I)I

    move-result p0

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetRotation FINISH ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) RESULT: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_42

    goto :goto_5b

    :catch_42
    move-exception p0

    .line 1077
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daemonSetRotation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return-void
.end method

.method public doTemplateSyncForUser([I)V
    .registers 16

    const-string v0, "SemFace"

    const/4 v1, 0x0

    if-nez p1, :cond_7

    new-array p1, v1, [I

    .line 895
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v2

    .line 897
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 898
    array-length v4, p1

    .line 901
    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTemplateSyncForUser: FW="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", HAL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v5, :cond_3a

    move v7, v1

    goto :goto_58

    :cond_3a
    const/4 v5, 0x1

    if-lez v4, :cond_49

    move v6, v1

    move v7, v5

    :goto_3f
    if-ge v6, v4, :cond_4a

    .line 910
    aget v8, p1, v6

    if-ne v8, v5, :cond_46

    move v7, v1

    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_49
    move v7, v1

    :cond_4a
    if-eqz v7, :cond_58

    const-string v6, "Main face ID(1) was removed!!!"

    .line 918
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v5, [I

    aput v1, v5, v1

    .line 919
    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRemove([I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_58} :catch_16a

    :cond_58
    :goto_58
    const-string/jumbo v5, "removing unknown template from fw, "

    const-string v6, "doTemplateSyncForUser"

    const/4 v8, -0x1

    if-eqz v4, :cond_120

    if-eqz v7, :cond_64

    goto/16 :goto_120

    :cond_64
    if-lez v4, :cond_183

    move v7, v1

    :goto_67
    if-ge v7, v4, :cond_dd

    .line 935
    :try_start_69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .line 937
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enumerate: HAL ID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, p1, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v1

    :goto_84
    if-ge v10, v9, :cond_98

    .line 940
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/face/Face;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v11

    aget v12, p1, v7

    if-ne v11, v12, :cond_95

    goto :goto_99

    :cond_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    :cond_98
    move v10, v8

    :goto_99
    if-ltz v10, :cond_9f

    .line 946
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_da

    .line 948
    :cond_9f
    new-instance v9, Landroid/hardware/face/Face;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 949
    invoke-virtual {v10, v11, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v10

    aget v11, p1, v7

    iget v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    int-to-long v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 951
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v2, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    .line 952
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enumerate: adding unknown template, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0, v9, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/hardware/face/Face;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 959
    :cond_dd
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_183

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    .line 960
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v7

    invoke-virtual {v3, v4, v2, v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    .line 964
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;ILandroid/hardware/face/Face;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e1

    .line 924
    :cond_120
    :goto_120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_183

    .line 925
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    .line 926
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v7

    invoke-virtual {v3, v4, v2, v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 929
    :cond_158
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, v6, v8}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_169} :catch_16a

    goto :goto_183

    :catch_16a
    move-exception p0

    .line 974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enumerate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_183
    :goto_183
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 577
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSecurityLevel(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v1, :cond_3b

    const-string v1, " , J"

    goto :goto_3d

    :cond_3b
    const-string v1, " , S"

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FALI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FALQ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FANM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceDump(Ljava/io/PrintWriter;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    goto :goto_94

    :catch_79
    move-exception p0

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dump: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentClientHashID()I
    .registers 2

    .line 1462
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "SemFace"

    const-string v0, "getCurrentClientHashID : client is null"

    .line 1464
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1467
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result p0

    return p0
.end method

.method public final getCurrentClientOwnerString()Ljava/lang/String;
    .registers 2

    .line 987
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "SemFace"

    const-string v0, "getCurrentClientOwnerString : client is null"

    .line 989
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 992
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentClientPrivilegedAttr()I
    .registers 3

    .line 1453
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1454
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v0, :cond_26

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentClientPrivilegedAttr : It\'s not FaceAuthenticationClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFace"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1458
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getPrivilegedAttr()I

    move-result p0

    return p0
.end method

.method public final getCurrentClientUserID()I
    .registers 1

    .line 1471
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    return p0
.end method

.method public getISehSession()Lvendor/samsung/hardware/biometrics/face/ISehSession;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    return-object p0
.end method

.method public getISession()Landroid/hardware/biometrics/face/ISession;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    return-object p0
.end method

.method public getRemainingLockoutTime(I)I
    .registers 2

    .line 535
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public final getRotationValue(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/16 p0, 0x10e

    return p0

    :cond_c
    const/16 p0, 0xb4

    return p0

    :cond_f
    const/16 p0, 0x5a

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getSecurityLevel(Z)I
    .registers 4

    .line 566
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    if-nez p1, :cond_8

    const/4 p1, 0x1

    if-ne v0, p1, :cond_8

    const/4 v0, 0x2

    .line 571
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSL : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSensorId()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    return p0
.end method

.method public final init()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 296
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 297
    monitor-enter p0

    .line 298
    :try_start_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "SemFace"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_76

    .line 301
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 321
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 322
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    goto :goto_44

    :cond_41
    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 338
    :goto_44
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->registerBroadcastEvents()V

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v0

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToOemStrength(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    const-string v0, "SemFace"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SL :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_76
    move-exception v0

    .line 299
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public isAllMaskTemplate()Z
    .registers 11

    const/16 v0, 0x65

    .line 1352
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonGetFaceTag(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move v2, v1

    goto :goto_e

    .line 1353
    :cond_b
    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    .line 1354
    :goto_e
    new-array v3, v2, [I

    const/4 v4, -0x1

    move v5, v1

    :goto_12
    const/4 v6, 0x1

    if-ge v5, v2, :cond_3b

    add-int/2addr v4, v6

    .line 1357
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v6

    aget-byte v8, v0, v4

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/2addr v4, v6

    aget-byte v8, v0, v4

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/2addr v4, v6

    aget-byte v6, v0, v4

    shl-int/lit8 v6, v6, 0x18

    const/high16 v8, -0x1000000

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1361
    :cond_3b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    invoke-virtual {v0, v4, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-nez v2, :cond_4f

    .line 1363
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4f

    move v1, v6

    goto :goto_7c

    :cond_4f
    if-eqz v2, :cond_7c

    .line 1365
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 1366
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :cond_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    move v4, v1

    :goto_69
    if-ge v4, v2, :cond_78

    .line 1369
    aget v5, v3, v4

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v7

    if-ne v5, v7, :cond_75

    move v0, v6

    goto :goto_79

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_78
    move v0, v1

    :goto_79
    if-nez v0, :cond_5c

    :cond_7b
    move v1, v0

    .line 1379
    :cond_7c
    :goto_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAllMaskTemplate "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFace"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isBrightnessEnable()Z
    .registers 5

    .line 505
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_a

    return v1

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 511
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result p0

    const-string v2, "face_brighten_screen"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_27

    move v1, v3

    :cond_27
    return v1
.end method

.method public final isCurrentClientKeyguard()Z
    .registers 2

    .line 979
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 980
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isDaemonConnectionClosed()Z
    .registers 2

    .line 1431
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    if-nez p0, :cond_9

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

.method public isTpaSehTestHalEnabled()Z
    .registers 2

    .line 1481
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isUsingSehAPI()Z
    .registers 2

    .line 1489
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getTestHalEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public onAcquired(II)V
    .registers 3

    .line 792
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_7

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceCountHelpEvent(II)V

    :cond_7
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 2

    const/4 v0, 0x2

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(I)V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .registers 2

    const/4 v0, 0x1

    .line 871
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonGetWrappedData()V

    .line 873
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_a

    .line 360
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    :cond_a
    return-void
.end method

.method public onEnrollResult(II)V
    .registers 9

    .line 798
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_b

    .line 800
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->pauseEnrollExt()V

    :cond_b
    if-nez p2, :cond_3a

    .line 804
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result p2

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 805
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p2, :cond_21

    .line 806
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnEnrollmentSuccess(Ljava/lang/String;)V

    .line 808
    :cond_21
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    move-result v1

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    sub-long v3, p1, v2

    const/4 v5, 0x0

    const-string v2, "S"

    .line 808
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 811
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    :cond_3a
    return-void
.end method

.method public onError(II)V
    .registers 4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_13

    const-string p1, "SemFace"

    const-string/jumbo p2, "onError : TEMPLATE_CORRUPTED"

    .line 720
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnumerateUser()V

    .line 724
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    return-void
.end method

.method public onErrorExt(II)V
    .registers 11

    const/16 v0, 0x8

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_22

    .line 685
    :cond_8
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    sub-long v5, v4, v6

    if-ne p1, v0, :cond_1c

    move v7, p2

    goto :goto_1d

    :cond_1c
    move v7, p1

    :goto_1d
    const-string v4, "E"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 688
    :cond_22
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_2d

    .line 689
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnError(Ljava/lang/String;II)V

    :cond_2d
    if-ne p1, v0, :cond_40

    const/16 p1, 0x3ee

    if-ne p2, p1, :cond_40

    .line 692
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_40

    const/16 p1, 0x16

    const p2, 0x186a1

    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    :cond_40
    return-void
.end method

.method public final onExtended(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    sub-long v9, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c6

    const v4, 0x186a2

    const/4 v5, 0x2

    const/16 v6, 0x16

    if-eq v1, v5, :cond_3f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    goto/16 :goto_f0

    .line 660
    :cond_1d
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_28

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnTimeout(Ljava/lang/String;)V

    .line 663
    :cond_28
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    if-ne v1, v5, :cond_2f

    .line 664
    invoke-virtual {v0, v6, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    .line 666
    :cond_2f
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    move-result v7

    const/4 v11, 0x0

    const-string v8, "T"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto/16 :goto_f0

    .line 635
    :cond_3f
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_b7

    .line 636
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->semBigDataFALICondition(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 637
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    goto :goto_66

    .line 638
    :cond_51
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    iget v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    invoke-static {v1, v5}, Landroid/hardware/face/FaceManager;->semBigDataFALQCondition(II)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 639
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    goto :goto_66

    .line 641
    :cond_61
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    .line 643
    :goto_66
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v1, :cond_74

    .line 644
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    goto :goto_b7

    .line 646
    :cond_74
    iget-object v11, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    iget v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    iget v15, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    if-eqz v1, :cond_8d

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 647
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isMaskSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8d

    move v2, v3

    :cond_8d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 646
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;IIILjava/lang/Boolean;)V

    .line 648
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->semBigDataFALICondition(I)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 649
    invoke-virtual {v0, v6, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    goto :goto_b7

    .line 650
    :cond_a0
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    invoke-static {v1, v2}, Landroid/hardware/face/FaceManager;->semBigDataFALQCondition(II)Z

    move-result v1

    if-eqz v1, :cond_b1

    const v1, 0x186a3

    .line 651
    invoke-virtual {v0, v6, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    goto :goto_b7

    :cond_b1
    const v1, 0x186a4

    .line 653
    invoke-virtual {v0, v6, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(II)V

    .line 657
    :cond_b7
    :goto_b7
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    move-result v7

    const/4 v11, 0x0

    const-string v8, "N"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto :goto_f0

    .line 628
    :cond_c6
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v1, :cond_e2

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    if-eqz v5, :cond_db

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 630
    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isMaskSettingOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_db

    move v2, v3

    :cond_db
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 629
    invoke-virtual {v1, v4, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedSuccess(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 632
    :cond_e2
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    move-result v7

    const/4 v11, 0x0

    const-string v8, "M"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    :goto_f0
    return-void
.end method

.method public onPreAcquired(IIZ)I
    .registers 16

    const/4 v0, 0x0

    const-string v1, "SemFace"

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-ne p1, v3, :cond_e

    .line 729
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    goto :goto_43

    :cond_e
    if-ne p1, v2, :cond_1d

    const/16 v4, 0x3fa

    if-ne p2, v4, :cond_1d

    const-string/jumbo p1, "onPreAcquired: early stop"

    .line 731
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    return v3

    :cond_1d
    if-ne p1, v2, :cond_31

    const/16 v4, 0x3fb

    if-ne p2, v4, :cond_31

    const-string/jumbo p1, "onPreAcquired: no match max count"

    .line 735
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 737
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    return v3

    :cond_31
    if-ne p1, v2, :cond_3a

    const/16 v4, 0x3fc

    if-ne p2, v4, :cond_3a

    .line 740
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    return v3

    :cond_3a
    if-ne p1, v2, :cond_43

    const/16 v4, 0x3fd

    if-ne p2, v4, :cond_43

    .line 743
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    return v3

    :cond_43
    :goto_43
    const-string v4, ")"

    const-string v5, ", "

    if-eqz p3, :cond_85

    .line 746
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    const-wide/16 v8, -0x1

    cmp-long p3, v6, v8

    if-eqz p3, :cond_85

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isNoFaceGuideEvents(II)Z

    move-result p3

    if-eqz p3, :cond_85

    .line 747
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    const-wide/16 v10, 0xbb8

    add-long/2addr v6, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long p3, v6, v10

    if-lez p3, :cond_83

    .line 748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPreAcquired: no face guide event skip ("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 751
    :cond_83
    iput-wide v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 754
    :cond_85
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    const/4 v6, 0x2

    const-string/jumbo v7, "onAcquired: upBrightnessMax"

    const/16 v8, 0x3f7

    if-ne p3, v6, :cond_9f

    if-ne p1, v2, :cond_9f

    if-ne p2, v8, :cond_9f

    .line 756
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->upBrightnessMax()V

    .line 757
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    return v3

    :cond_9f
    if-ne p3, v3, :cond_b3

    if-ne p1, v2, :cond_a5

    if-eq p2, v8, :cond_a8

    :cond_a5
    const/4 p3, 0x3

    if-ne p1, p3, :cond_b3

    .line 763
    :cond_a8
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 764
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 765
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b3
    if-eq p1, v2, :cond_b9

    .line 769
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    if-eq p1, p3, :cond_bf

    :cond_b9
    if-ne p1, v2, :cond_c9

    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    if-ne p2, p3, :cond_c9

    .line 771
    :cond_bf
    iget p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    const/16 v2, 0x1e

    if-ge p3, v2, :cond_c9

    return v3

    .line 775
    :cond_c9
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 776
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 777
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 779
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez p0, :cond_f4

    .line 780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPreAcquired: skip ("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 784
    :cond_f4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onAcquired: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    sget-boolean p3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v2, "("

    const-string v3, ""

    if-eqz p3, :cond_121

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_122

    :cond_121
    move-object p1, v3

    :goto_122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_143

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_143
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 784
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onPreAuthenticationFailed()Z
    .registers 5

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreAuthenticationFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFace"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getTestHalEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    return v2

    .line 854
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    const/4 v3, 0x1

    if-nez v0, :cond_41

    const-string/jumbo p0, "onAuthenticated: skip events after stop()"

    .line 855
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 858
    :cond_41
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 859
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    if-gtz v0, :cond_51

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    if-eqz p0, :cond_50

    goto :goto_51

    :cond_50
    return v3

    :cond_51
    :goto_51
    return v2
.end method

.method public onPreError(II)Z
    .registers 7

    .line 699
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getTestHalEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    return v0

    :cond_a
    const/4 p2, 0x5

    const/4 v1, 0x1

    const-string v2, "SemFace"

    if-ne p1, p2, :cond_17

    const-string/jumbo p0, "onError: skip error (5:cancel) from daemon"

    .line 704
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 708
    :cond_17
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p2

    .line 709
    instance-of v3, p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v3, :cond_25

    instance-of p2, p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-eqz p2, :cond_44

    :cond_25
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez p0, :cond_44

    .line 711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onError: skip ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    return v0
.end method

.method public onRemovedExt(Ljava/lang/String;I)V
    .registers 6

    .line 672
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1d

    .line 673
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_26

    .line 675
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 677
    :goto_26
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_31

    .line 678
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnRemoved(Ljava/lang/String;)V

    .line 680
    :cond_31
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final onTimeout()V
    .registers 5

    .line 830
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1e

    .line 831
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(I)V

    .line 832
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    .line 833
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x8

    const v1, 0x186a2

    .line 834
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    goto :goto_40

    .line 836
    :cond_1a
    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    goto :goto_40

    :cond_1e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_40

    .line 839
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    if-eqz v0, :cond_37

    .line 840
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientUserID()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFailed()V

    goto :goto_40

    .line 842
    :cond_37
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onExtended(I)V

    .line 843
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancelInternal()V

    .line 844
    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    :cond_40
    :goto_40
    return-void
.end method

.method public final pauseEnrollExt()V
    .registers 3

    const-string v0, "SemFace"

    const-string/jumbo v1, "pauseEnrollExt"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    return-void
.end method

.method public final registerBroadcastEvents()V
    .registers 4

    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 588
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseDVFS()V
    .registers 3

    const-string v0, "SemFace"

    const-string/jumbo v1, "releaseDVFS"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public final declared-synchronized releaseWakeLock(Z)V
    .registers 5

    monitor-enter p0

    .line 556
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "SemFace"

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_27

    .line 559
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->userActivity()V

    .line 561
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 563
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeSavedFaceIdIfCancelled([I)Z
    .registers 5

    const-string v0, "SemFace"

    .line 816
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelling:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 817
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 819
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRemove([I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_28

    :catch_e
    move-exception p0

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSavedFaceIdIfCancelled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    const-string/jumbo p0, "removeSavedFaceIdIfCancelled: remove registered face as enrollment is being cancelled"

    .line 823
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public resetAuthenticationTimeout(I)Z
    .registers 4

    const-string v0, "SemFace"

    const-string/jumbo v1, "resetAuthenticationTimeout"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 388
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    const/4 v0, 0x2

    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public resetFailedAttempts(Z)V
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method public final restoreBrightness()V
    .registers 2

    .line 521
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 522
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->restoreBrightness()V

    :cond_f
    return-void
.end method

.method public final resumeEnrollExt(I)V
    .registers 6

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeEnrollExt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFace"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 374
    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    return-void
.end method

.method public semConnectSession(Landroid/hardware/biometrics/face/IFace;)V
    .registers 6

    const-string v0, ", "

    const-string v1, "SemFace"

    if-nez p1, :cond_d

    const-string/jumbo p0, "semConnectSession daemon is NULL!!"

    .line 136
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_d
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    if-nez v2, :cond_18

    const-string/jumbo p0, "semConnectSession mISessionCallback is NULL!! not set yet"

    .line 140
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_18
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semConnectSession IFace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/face/ISehFace;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semConnectSession ISehFace = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    invoke-interface {v0}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p1, v0, v2, v3}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Lvendor/samsung/hardware/biometrics/face/ISehSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "semConnectSession ISehSession = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/face/ISession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "semConnectSession ISession = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 156
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 157
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string/jumbo p1, "semConnectSession end"

    .line 158
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_dc} :catch_dd

    goto :goto_e7

    :catch_dd
    move-exception p1

    const-string/jumbo v0, "semConnectSession Exception : "

    .line 161
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->semResetConnection()V

    :goto_e7
    return-void
.end method

.method public semResetConnection()V
    .registers 3

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->binderDied()V

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendAcquired(II)V
    .registers 4

    .line 1435
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1436
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_26

    .line 1437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendAcquired - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1440
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public final sendBroadcast(Ljava/lang/String;II)V
    .registers 8

    const-string v0, "SemFace"

    .line 606
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_16

    const-string v2, "faceIndex"

    .line 608
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    .line 609
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    const/high16 v2, 0x1000000

    .line 612
    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 613
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 614
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_5e

    const-string p3, "["

    if-eqz p0, :cond_46

    .line 615
    :try_start_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is sent with faceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 617
    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is sent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_5e

    goto :goto_74

    :catch_5e
    move-exception p0

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendBroadcast failed :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void
.end method

.method public final sendError(II)V
    .registers 4

    .line 1444
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1445
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_26

    .line 1446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendError - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1449
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    return-void
.end method

.method public setISession(Landroid/hardware/biometrics/face/ISession;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    return-void
.end method

.method public setISessionCallback(Landroid/hardware/biometrics/face/ISessionCallback;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    return-void
.end method

.method public setTpaHalEnabled(Z)V
    .registers 6

    .line 1493
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1496
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    .line 1498
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 1499
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 1501
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    const-string v3, "biometric_tpa_mode"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    if-eqz p1, :cond_20

    or-int/lit8 p1, v0, 0x8

    goto :goto_22

    :cond_20
    and-int/lit8 p1, v0, -0x9

    .line 1507
    :goto_22
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v1, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    return-void
.end method

.method public final declared-synchronized setWakeLock(ZI)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 545
    :try_start_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "SemFace"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1c

    .line 547
    :cond_f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v1, "SemFace"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 549
    :goto_1c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "SemFace"

    const-string/jumbo v0, "setWakeLock"

    .line 550
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    .line 553
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startBrightness()V
    .registers 2

    .line 515
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->startBrightness(I)V

    :cond_11
    return-void
.end method

.method public final startInactivityTimer(I)V
    .registers 6

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInactivityTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFace"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public declared-synchronized startOperation(I)V
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "SemFace"

    const-string/jumbo v1, "startOperation S"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1770

    const/4 v1, 0x1

    .line 398
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 399
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    const/4 v2, 0x0

    if-ne p1, v1, :cond_79

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 404
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0xea60

    goto :goto_2d

    :cond_2b
    const/16 v0, 0x7530

    :goto_2d
    const-string v1, "SemFace"

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll timeout set as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 407
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x1a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 408
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "Biometrics_FaceService"

    const/4 v10, 0x0

    .line 407
    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result v3

    const-string v4, "E"

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    :cond_79
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c0

    .line 411
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/16 v0, 0x1388

    goto :goto_8d

    :cond_8b
    const/16 v0, 0xfa0

    .line 413
    :goto_8d
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startBrightness()V

    new-array v3, v1, [B

    .line 417
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isBrightnessEnable()Z

    move-result v4

    if-eqz v4, :cond_9d

    move v4, v1

    goto :goto_9e

    :cond_9d
    move v4, v2

    :goto_9e
    aput-byte v4, v3, v2

    .line 418
    invoke-virtual {p0, v1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSetFaceTag(I[B)I

    .line 419
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result v3

    const-string v4, "A"

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_c0
    :goto_c0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isCurrentClientKeyguard()Z

    move-result p1

    add-int/lit16 v0, v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->setWakeLock(ZI)V
    :try_end_cc
    .catchall {:try_start_1 .. :try_end_cc} :catchall_125

    .line 424
    :try_start_cc
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I
    :try_end_d8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_cc .. :try_end_d8} :catch_d9
    .catchall {:try_start_cc .. :try_end_d8} :catchall_125

    goto :goto_f5

    :catch_d9
    move-exception p1

    :try_start_da
    const-string v0, "SemFace"

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOperation: failed to get display, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_f5
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSetRotation(I)V

    const/4 p1, -0x1

    .line 430
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredInfo:I

    .line 431
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPrevAcquiredVendorInfo:I

    .line 432
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSkipAcquiredEventCount:I

    .line 433
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCheckedTooDark:Z

    .line 434
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticateResult:Z

    .line 435
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mBrightnessUp:I

    .line 436
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mInsufficient:I

    .line 437
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEarlyStop:Z

    .line 438
    iput v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mNoMatchMaxCountNum:I

    .line 439
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsTimeout:Z

    .line 440
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mConfirmOnMask:Z

    const-string p1, "SemFace"

    const-string/jumbo v0, "startOperation E"

    .line 442
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_123
    .catchall {:try_start_da .. :try_end_123} :catchall_125

    .line 453
    monitor-exit p0

    return-void

    :catchall_125
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stopOperation()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "SemFace"

    const-string/jumbo v1, "stopOperation S"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_17

    const-string v0, "SemFace"

    const-string/jumbo v1, "stopOperation E : skip"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_67

    .line 460
    monitor-exit p0

    return-void

    .line 463
    :cond_17
    :try_start_17
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 464
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x1a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Biometrics_FaceService"

    .line 464
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseWakeLock(Z)V

    goto :goto_3d

    :cond_34
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3d

    .line 468
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseWakeLock(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->restoreBrightness()V

    .line 471
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    .line 472
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 474
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 475
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 476
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    const-wide/16 v0, -0x1

    .line 477
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const-string v0, "SemFace"

    const-string/jumbo v1, "stopOperation E"

    .line 480
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_65
    .catchall {:try_start_17 .. :try_end_65} :catchall_67

    .line 489
    monitor-exit p0

    return-void

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final upBrightnessMax()V
    .registers 1

    .line 527
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightnessMax()V

    return-void
.end method

.method public final userActivity()V
    .registers 5

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 540
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method
