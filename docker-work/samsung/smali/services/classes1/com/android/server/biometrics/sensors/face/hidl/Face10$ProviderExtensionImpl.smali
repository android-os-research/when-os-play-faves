.class public final Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
.super Ljava/lang/Object;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProviderExtensionImpl"
.end annotation


# static fields
.field public static final ACTION_FACE_ADDED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_ADDED"

.field public static final ACTION_FACE_REMOVED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

.field public static final ACTION_FACE_RESET:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_RESET"

.field public static final AUTH_MATCH:I = 0x1

.field public static final AUTH_NOMATCH:I = 0x2

.field public static final AUTH_TIMEOUT:I = 0x3

.field public static final DEFAULT_INACTIVITY_2ND_ENROLLMENT_TIMEOUT:I = 0x7530

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_LOW_ILLUMINATION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_TIMEOUT:I = 0xfa0

.field public static final DEFAULT_INACTIVITY_AUTHENTICATION_TIMEOUT:I = 0x1770

.field public static final DEFAULT_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0x7530

.field public static final ERROR_ESRCH:I = 0x3

.field public static final FACE_DAEMON_TAG_CONTROL_TIMEOUT_FOR_LOW_ILLUMINATION:I = 0x1

.field public static final MAX_EVENT_SKIP_CNT:I = 0x1e

.field public static final MSG_ACQUIRED_EMPTY:I = 0x3

.field public static final MSG_INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final MSG_PROXIMITY_SENSOR_ERROR:I = 0x4

.field public static final OPERATION_TYPE_AUTEHENTICATION:I = 0x2

.field public static final OPERATION_TYPE_ENROLLMENT:I = 0x1

.field public static final SKIP_NO_FACE_EVENT_TIME_ON_ENROLL:I = 0xbb8

.field public static final SYSTEM_PROPERTIES_IS_AUTHENTICATION:Ljava/lang/String; = "service.bioface.authenticating"

.field public static final VOICE_ASSISTANT_2ND_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0xea60

.field public static final VOICE_ASSISTANT_INACTIVITY_ENROLLMENT_TIMEOUT:I = 0xea60

.field public static final WAKE_LOCK_TIMEOUT_EXTRA:I = 0xbb8

.field public static final mIsFrameworkHandleLockout:Z = true


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mBrightnessUp:I

.field public mContext:Landroid/content/Context;

.field public mDaemonIsCancelling:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEnrollStartTime:J

.field public mFALI:I

.field public mFALQ:I

.field public mFANM:I

.field public mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public mGetFaceTagResult:[B

.field public mHalDeviceId:J

.field public mHandlerMain:Landroid/os/Handler;

.field public mInsufficient:I

.field public mIsAuthenticateResult:Z

.field public mIsCheckedTooDark:Z

.field public mIsEnrollPausing:Z

.field public mIsOperationStarted:Z

.field public mLastRotation:I

.field public mMemoryFile:Landroid/os/MemoryFile;

.field public mOperationType:I

.field public mOrientationEventListener:Landroid/view/OrientationEventListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrevAcquiredInfo:I

.field public mPrevAcquiredVendorInfo:I

.field public mPreviewImage:[B

.field public mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

.field public mSecurityLevel:I

.field public mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public mShouldRemoveRegisteredFaceOnCancelling:Z

.field public mSkipAcquiredEventCount:I

.field public mStartOperationTime:J

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public static synthetic $r8$lambda$Bv2OUQxImk79xPrx1EuYGQ5i6Uk(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$stopOperation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$H93wPyD2s5MOpv3hJZfCURpcvUo(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IkoUcjZzNVhph8m3Ga_xMNtYFVc(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpQO_C6mfSwogWaBmZRK0scB1ds(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$startOperation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$c09GhMQ0Vp69Ui5Y4xMy7g8hvd4(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$sendImageProcessed$6(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$jG4WgMazWM3Wf_0cPZAGZwhs0c8(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$doTemplateSyncForUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmkPq1UpzrXF-J07xpM_k8LoM3Y(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->lambda$getFaceTag$2(IILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonIsCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEnrollStartTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAuthenticateResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonAuthenticate(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonAuthenticate(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonCancel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonIsSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonIsSessionClose()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonPauseAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonPauseAuth()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonPauseEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonPauseEnroll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonRemove(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonRemove(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonResumeAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonResumeAuth()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonResumeEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonResumeEnroll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSessionClose()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSessionOpen(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSessionOpen()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdaemonSetActiveUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdaemonSetRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetRotation(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoTemplateSyncForUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;JLjava/util/ArrayList;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->doTemplateSyncForUser(JLjava/util/ArrayList;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRemainingLockoutTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getSecurityLevel(Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAcquired(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedExt(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEnrollResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onEnrollResult(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEnrollResultExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onEnrollResultExt(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monErrorExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onErrorExt(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPreAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onPreAcquired(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monPreError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onPreError(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monRemovedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onRemovedExt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetFailedAttempts(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetOperationTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->resetOperationTimeout(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendAcquired(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendImageProcessed(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setSecurityLevel(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V
    .registers 8

    .line 1616
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1555
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    .line 1557
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    const/4 v1, 0x0

    .line 1566
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 1568
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    const-wide/16 v2, -0x1

    .line 1569
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    const/4 v4, -0x1

    .line 1570
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 1571
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z

    .line 1572
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    .line 1573
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    .line 1575
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 1576
    iput v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 1577
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 1579
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    .line 1580
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    .line 1581
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 1594
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 1596
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    .line 1617
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1618
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 1619
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1620
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v2, "Face10"

    invoke-virtual {p2, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1622
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v0, v2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 1638
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 1639
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    goto :goto_78

    .line 1653
    :cond_76
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    .line 1655
    :goto_78
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->registerBroadcastEvents()V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$3(I)V
    .registers 4

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    const/4 v1, -0x1

    .line 2269
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$4(Landroid/hardware/face/Face;I)V
    .registers 4

    .line 2294
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$doTemplateSyncForUser$5(ILandroid/hardware/face/Face;)V
    .registers 5

    .line 2305
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2306
    invoke-virtual {p2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p2

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_22

    :cond_1c
    const/4 p2, -0x1

    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    .line 2308
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    :goto_22
    return-void
.end method

.method private synthetic lambda$getFaceTag$2(IILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    .registers 5

    if-eqz p2, :cond_3

    return-void

    .line 1918
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceTag type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tagType: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->type:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Face10"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object p1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mGetFaceTagResult:[B

    const/4 p1, 0x0

    .line 1920
    :goto_46
    iget-object p2, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_61

    .line 1921
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mGetFaceTagResult:[B

    iget-object v0, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_61
    return-void
.end method

.method private synthetic lambda$sendImageProcessed$6(IIII)V
    .registers 19

    move-object v1, p0

    .line 2590
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    .line 2591
    instance-of v0, v2, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    const-string v3, "Face10"

    const/4 v4, 0x0

    if-nez v0, :cond_2e

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendImageProcessed : not FaceEnrollClient : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    iput-object v4, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    return-void

    .line 2598
    :cond_2e
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    if-nez v0, :cond_3e

    .line 2599
    new-instance v0, Landroid/os/MemoryFile;

    const-string v5, "face_preview"

    iget-object v6, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    array-length v6, v6

    invoke-direct {v0, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    .line 2601
    :cond_3e
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    array-length v6, v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 2603
    const-class v0, Landroid/os/MemoryFile;

    const-string v5, "getFileDescriptor"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2604
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 2605
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2607
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_64} :catch_72

    :try_start_64
    const-string/jumbo v6, "memoryfile_descriptor"

    .line 2608
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 2609
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_7a

    :catch_70
    move-exception v0

    goto :goto_74

    :catch_72
    move-exception v0

    move-object v5, v4

    :goto_74
    const-string/jumbo v6, "sendImageProcessed MemoryFile: "

    .line 2611
    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7a
    move-object v13, v5

    .line 2614
    :try_start_7b
    move-object v7, v2

    check-cast v7, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onImageProcessed([BIIIILandroid/os/Bundle;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8a} :catch_8b

    goto :goto_92

    :catch_8b
    move-exception v0

    const-string/jumbo v2, "sendImageProcessed onImageProcessed: "

    .line 2616
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2618
    :goto_92
    iput-object v4, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    return-void
.end method

.method private synthetic lambda$startOperation$0()V
    .registers 2

    .line 1799
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1800
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1802
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_14

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->registerListener()Z

    :cond_14
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "1"

    .line 1805
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$stopOperation$1()V
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1841
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mProximitySensorObserver:Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;

    if-eqz p0, :cond_c

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->unregisterListener()V

    :cond_c
    const-string/jumbo p0, "service.bioface.authenticating"

    const-string v0, "0"

    .line 1844
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final acquireDVFS(II)V
    .registers 11

    const-string v0, "Face10"

    const-string v1, "acquireDVFS"

    .line 1933
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

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

.method public final daemonAuthenticate(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const-string v1, "Face10"

    if-nez v0, :cond_10

    const-string p0, "authenticate(): no face HAL!"

    .line 2338
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v2, 0x2

    .line 2341
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperation(I)V

    .line 2343
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    const-string/jumbo v3, "ms) RESULT: "

    if-eqz v2, :cond_43

    .line 2344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2345
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p0

    .line 2346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "authenticate FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 2348
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2349
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoRequestDataAsArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, p1, p2, p0, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result p0

    .line 2350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sehAuthenticate FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public final declared-synchronized daemonCancel()I
    .registers 8

    monitor-enter p0

    .line 1849
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_13

    const-string v0, "Face10"

    const-string v2, "daemonCancel(): no face HAL!"

    .line 1851
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_50

    .line 1852
    monitor-exit p0

    return v1

    :cond_13
    const/4 v2, 0x1

    .line 1855
    :try_start_14
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_50

    .line 1857
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1858
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v1

    const-string v0, "Face10"

    .line 1859
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "daemonCancel FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_42} :catch_43
    .catchall {:try_start_16 .. :try_end_42} :catchall_50

    goto :goto_4b

    :catch_43
    move-exception v0

    :try_start_44
    const-string v2, "Face10"

    const-string v3, "Failed to get biometric interface"

    .line 1861
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    const/4 v0, 0x0

    .line 1863
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_50

    .line 1864
    monitor-exit p0

    return v1

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "Face10"

    if-nez v0, :cond_11

    const-string p0, "daemonEnroll: no face HAL!"

    .line 2357
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    if-eqz p1, :cond_62

    .line 2360
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_62

    :cond_1a
    const/4 v1, 0x1

    .line 2364
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperation(I)V

    .line 2365
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_37

    .line 2366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hardwareAuthToken  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2369
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p0

    .line 2370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enroll FINISH ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v3

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms) RESULT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_62
    :goto_62
    const-string p0, "daemonEnroll: hardwareAuthToken is null or 0"

    .line 2361
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final daemonEnumerateUser()I
    .registers 7

    const-string v0, "Face10"

    .line 2521
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3d

    .line 2524
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2525
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result p0

    .line 2526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonEnumerateUser FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    const-string v1, "daemonEnumerateUser: "

    .line 2529
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method public daemonGetTrustAppVersion()Ljava/lang/String;
    .registers 7

    .line 1680
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const-string v0, "Face10"

    const-string v1, ""

    if-nez p0, :cond_14

    const-string p0, "daemonGetTrustAppVersion(): no face HAL!"

    .line 1682
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1686
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1687
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    move-result-object v1

    .line 1688
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehGetTaInfo FINISH ("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_57

    :catch_3d
    move-exception p0

    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTrustAppVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_57
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_70

    .line 1693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTrustAppVersion: returned: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-object v1
.end method

.method public daemonInstallTAEnd([B)I
    .registers 9

    .line 2667
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const/4 v0, 0x3

    const-string v1, "Face10"

    if-nez p0, :cond_13

    const-string p0, "daemonInstallTAEnd: no face HAL!"

    .line 2669
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2673
    :cond_13
    :try_start_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2d

    .line 2674
    array-length v3, p1

    if-lez v3, :cond_2d

    .line 2675
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_2d

    aget-byte v5, p1, v4

    .line 2676
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2679
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2680
    invoke-interface {p0, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehFinishTaInstallation(Ljava/util/ArrayList;)I

    move-result p0

    .line 2681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sehFinishTaInstallation FINISH ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_58} :catch_59

    return p0

    :catch_59
    move-exception p0

    .line 2684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "daemonInstallTAEnd: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public daemonInstallTAStart()I
    .registers 8

    .line 2623
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const/4 v0, 0x3

    const-string v1, "Face10"

    if-nez p0, :cond_13

    const-string p0, "daemonInstallTAStart(): no face HAL!"

    .line 2625
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2629
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2630
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPrepareTaInstallation()I

    move-result p0

    .line 2631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehPrepareTaInstallation FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3e} :catch_3f

    return p0

    :catch_3f
    move-exception p0

    .line 2634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "daemonInstallTAStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public daemonInstallTAWrite([B)I
    .registers 9

    .line 2640
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const/4 v0, 0x3

    const-string v1, "Face10"

    if-nez p0, :cond_13

    const-string p0, "daemonInstallTAWrite: no face HAL!"

    .line 2643
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2647
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([B)Landroid/os/HidlMemory;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_48

    .line 2648
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2649
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehInstallTaDataChunk(Landroid/os/HidlMemory;)I

    move-result p0

    .line 2650
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V

    .line 2651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehInstallTaDataChunk FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_45} :catch_46

    return p0

    :catch_46
    move-exception p0

    goto :goto_4a

    :catch_48
    move-exception p0

    const/4 p1, 0x0

    .line 2654
    :goto_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "daemonInstallTAWrite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7e

    .line 2657
    :try_start_64
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_7e

    .line 2659
    :catch_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    return v0
.end method

.method public final daemonIsSessionClose()Z
    .registers 7

    const-string v0, "Face10"

    .line 2506
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2509
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2510
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    move-result p0

    .line 2511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehIsTaSessionClosed FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception p0

    const-string v1, "daemonIsSessionClose: "

    .line 2514
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final daemonPauseAuth()V
    .registers 7

    .line 2444
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 2445
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    const-string v1, "Face10"

    if-eqz v0, :cond_4d

    .line 2446
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_52

    .line 2449
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2450
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result p0

    .line 2451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehPauseEnrollment(auth) FINISH ("

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
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception p0

    const-string v0, "daemonPauseEnrollment(auth): "

    .line 2453
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :cond_4d
    const-string p0, "daemonPauseAuth skipped"

    .line 2457
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public final daemonPauseEnroll()V
    .registers 8

    const-string v0, "Face10"

    .line 2412
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz v1, :cond_3e

    .line 2415
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2416
    invoke-interface {v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result v1

    .line 2417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehPauseEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v1

    const-string v2, "daemonPauseEnroll: "

    .line 2419
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    .line 2422
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    return-void
.end method

.method public final daemonRemove(I)I
    .registers 8

    .line 2394
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "Face10"

    if-nez p0, :cond_11

    const-string p0, "daemonRemove: no face HAL!"

    .line 2396
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    const-wide/16 v2, 0x0

    .line 2402
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2403
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception p0

    .line 2405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonRemove : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :goto_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "daemonRemove FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms) RESULT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final daemonResumeAuth()V
    .registers 7

    .line 2462
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 2463
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    const-string v1, "Face10"

    if-eqz v0, :cond_4d

    .line 2464
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_52

    .line 2467
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2468
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result p0

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehResumeEnrollment(auth) FINISH ("

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
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception p0

    const-string v0, "daemonResumeAuth(auth): "

    .line 2471
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :cond_4d
    const-string p0, "daemonResumeAuth skipped"

    .line 2475
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    return-void
.end method

.method public final daemonResumeEnroll()V
    .registers 8

    const-string v0, "Face10"

    .line 2426
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz v1, :cond_3e

    .line 2429
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2430
    invoke-interface {v1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result v1

    .line 2431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehResumeEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v1

    const-string v2, "daemonResumeEnroll: "

    .line 2433
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2436
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    .line 2437
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    const v0, 0xea60

    goto :goto_53

    :cond_51
    const/16 v0, 0x7530

    .line 2439
    :goto_53
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startOperationTimeout(I)V

    .line 2440
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    return-void
.end method

.method public final daemonSessionClose()V
    .registers 7

    const-string v0, "Face10"

    .line 2493
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2496
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2497
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    move-result p0

    .line 2498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehCloseTaSession FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string v1, "daemonSessionClose: "

    .line 2500
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final daemonSessionOpen()V
    .registers 7

    const-string v0, "Face10"

    .line 2480
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    if-eqz p0, :cond_3e

    .line 2483
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2484
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    move-result p0

    .line 2485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sehOpenTaSession FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms) RESULT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string v1, "daemonSessionOpen: "

    .line 2487
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final daemonSetActiveUser(I)I
    .registers 9

    .line 2375
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "Face10"

    if-nez p0, :cond_11

    const-string p0, "daemonSetActiveUser: no face HAL!"

    .line 2377
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    const-wide/16 v2, 0x0

    .line 2383
    :try_start_13
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v5

    const-string v6, "facedata"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2385
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, p1, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    move-result v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    .line 2387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "daemonSetActiveUser : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "daemonSetActiveUser FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms) RESULT: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final daemonSetRotation(I)V
    .registers 8

    .line 1868
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const-string v1, "Face10"

    if-nez v0, :cond_12

    const-string p0, "daemonSetRotation(): no face HAL!"

    .line 1870
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1874
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1875
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getRotationValue(I)I

    move-result p0

    invoke-interface {v0, p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    move-result p0

    .line 1876
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
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_40} :catch_41

    goto :goto_5a

    :catch_41
    move-exception p0

    .line 1878
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

    :goto_5a
    return-void
.end method

.method public final doTemplateSyncForUser(JLjava/util/ArrayList;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "Face10"

    .line 2233
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v3, :cond_b

    return-void

    :cond_b
    if-nez p3, :cond_13

    .line 2238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15

    :cond_13
    move-object/from16 v3, p3

    .line 2241
    :goto_15
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 2242
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2245
    :try_start_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doTemplateSyncForUser: FW="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", HAL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-lez v5, :cond_5d

    const/4 v7, 0x1

    move v8, v6

    move v9, v7

    :goto_4b
    if-ge v8, v5, :cond_5e

    .line 2250
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_5a

    move v9, v6

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :cond_5d
    move v9, v6

    :cond_5e
    if-eqz v9, :cond_6b

    const-string v7, "Main face ID(1) was removed!!!"

    .line 2258
    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    .line 2260
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonRemove(I)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6b} :catch_19d

    :cond_6b
    const-string/jumbo v7, "removing unknown template from fw, "

    const-string v8, "doTemplateSyncForUser"

    const/4 v10, -0x1

    if-eqz v5, :cond_14f

    if-eqz v9, :cond_77

    goto/16 :goto_14f

    :cond_77
    if-lez v5, :cond_1b6

    move v9, v6

    :goto_7a
    if-ge v9, v5, :cond_108

    .line 2275
    :try_start_7c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 2277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enumerate: HAL ID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v6

    :goto_99
    if-ge v12, v11, :cond_b5

    .line 2280
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/face/Face;

    invoke-virtual {v13}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_b2

    goto :goto_b6

    :cond_b2
    add-int/lit8 v12, v12, 0x1

    goto :goto_99

    :cond_b5
    move v12, v10

    :goto_b6
    if-ltz v12, :cond_be

    .line 2286
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-wide/from16 v14, p1

    goto :goto_104

    .line 2288
    :cond_be
    new-instance v11, Landroid/hardware/face/Face;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 2289
    invoke-virtual {v12, v13, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2290
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-wide/from16 v14, p1

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 2291
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13, v1, v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    .line 2292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enumerate: adding unknown template, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v12}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0, v11, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_104
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7a

    .line 2299
    :cond_108
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 2300
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-virtual {v5, v6, v1, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 2301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    .line 2304
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10c

    .line 2264
    :cond_14f
    :goto_14f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b6

    .line 2265
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_159
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_187

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 2266
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-virtual {v5, v6, v1, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 2267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 2269
    :cond_187
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2270
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_19c} :catch_19d

    goto :goto_1b6

    :catch_19d
    move-exception v0

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enumerate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    :goto_1b6
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2024
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v1, :cond_30

    const-string v1, " , J"

    goto :goto_32

    :cond_30
    const-string v1, " , S"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FALI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FALQ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FANM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceDump(Ljava/io/PrintWriter;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_89

    :catch_6e
    move-exception p0

    .line 2029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dump: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_89
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1661
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentClientHashID()I
    .registers 2

    .line 2563
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientHashID : client is null"

    .line 2565
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2568
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result p0

    return p0
.end method

.method public final getCurrentClientOwnerString()Ljava/lang/String;
    .registers 2

    .line 2327
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientOwnerString : client is null"

    .line 2329
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2332
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentClientPrivilegedAttr()I
    .registers 3

    .line 2554
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2555
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    if-nez v0, :cond_2a

    .line 2556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentClientPrivilegedAttr : It\'s not FaceAuthenticationClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face10"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2559
    :cond_2a
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getPrivilegedAttr()I

    move-result p0

    return p0
.end method

.method public final getCurrentClientUserID()I
    .registers 2

    .line 2572
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "Face10"

    const-string v0, "getCurrentClientHashID : client is null"

    .line 2574
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2577
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    return p0
.end method

.method public final getFaceTag(I)[B
    .registers 9

    .line 1906
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const-string v1, "Face10"

    const/4 v2, 0x0

    if-nez v0, :cond_14

    const-string/jumbo p0, "setFaceTag(): no face HAL!"

    .line 1908
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1911
    :cond_14
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mGetFaceTagResult:[B

    .line 1913
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1914
    new-instance v5, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    invoke-interface {v0, p1, v5}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V

    .line 1924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehGetFaceTag FINISH ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mGetFaceTagResult:[B
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    .line 1927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFaceTag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getHalDeviceId()J
    .registers 3

    .line 2585
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getRemainingLockoutTime(I)I
    .registers 2

    .line 1975
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getRemainingLockoutTime(I)I

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

.method public final getSecurityLevel(Z)I
    .registers 4

    .line 2013
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    if-nez p1, :cond_8

    const/4 p1, 0x1

    if-ne v0, p1, :cond_8

    const/4 v0, 0x2

    .line 2018
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSL : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

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

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isBrightnessEnable()Z
    .registers 5

    .line 1945
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    return v1

    .line 1948
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 1951
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p0

    const-string v2, "face_brighten_screen"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_2b

    move v1, v3

    :cond_2b
    return v1
.end method

.method public final isCurrentClientKeyguard()Z
    .registers 2

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2320
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final onAcquired(II)V
    .registers 3

    .line 2159
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_7

    .line 2160
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceCountHelpEvent(II)V

    :cond_7
    return-void
.end method

.method public final onAuthenticatedExt(I)V
    .registers 12

    .line 2034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long v7, v0, v2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_79

    const/4 v1, 0x2

    if-eq p1, v1, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    goto/16 :goto_98

    .line 2060
    :cond_13
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p1, :cond_1e

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnTimeout(Ljava/lang/String;)V

    .line 2063
    :cond_1e
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "T"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto :goto_98

    .line 2043
    :cond_31
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p1, :cond_66

    .line 2044
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    if-lt v1, v0, :cond_3f

    .line 2045
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALI:I

    goto :goto_4f

    .line 2046
    :cond_3f
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4a

    .line 2047
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFALQ:I

    goto :goto_4f

    .line 2049
    :cond_4a
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFANM:I

    .line 2051
    :goto_4f
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    if-eqz v0, :cond_5b

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    goto :goto_66

    .line 2054
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;II)V

    .line 2057
    :cond_66
    :goto_66
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "N"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto :goto_98

    .line 2037
    :cond_79
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p1, :cond_86

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnAuthenticatedSuccess(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2040
    :cond_86
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "M"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    :goto_98
    return-void
.end method

.method public final onAuthenticatedTimeout()V
    .registers 9

    .line 2069
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    if-eqz v0, :cond_23

    .line 2070
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientUserID()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->-$$Nest$monAuthenticatedInternal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIILjava/util/ArrayList;Z)V

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    .line 2072
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    goto :goto_47

    .line 2074
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    .line 2075
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonCancel()I

    const/4 v0, 0x3

    .line 2076
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onAuthenticatedExt(I)V

    .line 2077
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    if-eqz v1, :cond_43

    const/16 v0, 0x8

    const v1, 0x186a2

    .line 2078
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    goto :goto_47

    :cond_43
    const/4 v1, 0x0

    .line 2080
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendError(II)V

    :goto_47
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_a

    .line 1674
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    :cond_a
    return-void
.end method

.method public final onEnrollResult(Ljava/lang/String;II)V
    .registers 4

    .line 2195
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x1e

    if-ne p3, p1, :cond_b

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperationTimeout()V

    :cond_b
    if-nez p3, :cond_14

    .line 2201
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->stopOperation()V

    :cond_14
    return-void
.end method

.method public final onEnrollResultExt(Ljava/lang/String;II)V
    .registers 10

    if-nez p3, :cond_32

    .line 2185
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p1

    const-string p3, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 2186
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p1, :cond_18

    .line 2187
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnEnrollmentSuccess(Ljava/lang/String;)V

    .line 2189
    :cond_18
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v1

    .line 2190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long v3, p1, v2

    const/4 v5, 0x0

    const-string v2, "S"

    .line 2189
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    :cond_32
    return-void
.end method

.method public final onError(II)V
    .registers 4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1a

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_1a

    const-string p1, "Face10"

    const-string/jumbo p2, "onError : TEMPLATE_CORRUPTED"

    .line 2110
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetActiveUser(I)I

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonEnumerateUser()I

    :cond_1a
    return-void
.end method

.method public final onErrorExt(II)V
    .registers 10

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    .line 2099
    :cond_6
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientHashID()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    sub-long v4, v3, v5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_20

    move v6, p2

    goto :goto_21

    :cond_20
    move v6, p1

    :goto_21
    const-string v3, "E"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 2102
    :cond_26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz v0, :cond_31

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnError(Ljava/lang/String;II)V

    :cond_31
    return-void
.end method

.method public final onPreAcquired(II)I
    .registers 15

    const/16 v0, 0x3f7

    const/16 v1, 0x16

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    .line 2118
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    goto :goto_16

    :cond_d
    if-ne p1, v1, :cond_16

    if-ne p2, v0, :cond_16

    .line 2120
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    .line 2122
    :cond_16
    :goto_16
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const-string v4, ", "

    const-string v7, "Face10"

    if-eqz v3, :cond_64

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->isNoFaceGuideEvents(II)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2123
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    const-wide/16 v10, 0xbb8

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-lez v3, :cond_5e

    .line 2124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreAcquired: no face event skip ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2127
    :cond_5e
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v3

    iput-wide v5, v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    :cond_64
    if-eq p1, v1, :cond_6a

    .line 2130
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    if-eq p1, v3, :cond_70

    :cond_6a
    if-ne p1, v1, :cond_7a

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    if-ne p2, v3, :cond_7a

    .line 2132
    :cond_70
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    const/16 v5, 0x1e

    if-ge v3, v5, :cond_7a

    return v2

    :cond_7a
    const/4 v3, 0x0

    .line 2136
    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 2137
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 2138
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 2140
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez v5, :cond_a6

    .line 2141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreAcquired: skip ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2145
    :cond_a6
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b7

    if-ne p1, v1, :cond_b7

    if-ne p2, v0, :cond_b7

    .line 2148
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->upBrightnessMax()V

    return v2

    :cond_b7
    if-ne v4, v2, :cond_c2

    if-ne p1, v1, :cond_bd

    if-eq p2, v0, :cond_c0

    :cond_bd
    const/4 p2, 0x3

    if-ne p1, p2, :cond_c2

    .line 2153
    :cond_c0
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    :cond_c2
    return v3
.end method

.method public final onPreError(II)I
    .registers 5

    const/4 p0, 0x1

    const-string p2, "Face10"

    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    const-string/jumbo p1, "onError: skip error (5:cancel) from daemon"

    .line 2087
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 2090
    :cond_d
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_30

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: skip ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public final onRemovedExt(Ljava/lang/String;I)V
    .registers 6

    .line 2206
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_25

    .line 2207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_30

    .line 2209
    :cond_25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 2211
    :goto_30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    if-eqz p0, :cond_3b

    .line 2212
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceOnRemoved(Ljava/lang/String;)V

    .line 2214
    :cond_3b
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final registerBroadcastEvents()V
    .registers 4

    .line 2690
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 2691
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2692
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final releaseDVFS()V
    .registers 3

    const-string v0, "Face10"

    const-string/jumbo v1, "releaseDVFS"

    .line 1940
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public final declared-synchronized releaseWakeLock(Z)V
    .registers 5

    monitor-enter p0

    .line 1996
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "Face10"

    .line 1997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_27

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->userActivity()V

    .line 2001
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 2003
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetFailedAttempts(Z)V
    .registers 2

    .line 1971
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method public final resetOperationTimeout(I)Z
    .registers 4

    const-string v0, "Face10"

    const-string/jumbo v1, "resetOperationTimeout"

    .line 1745
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1749
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    const/4 v0, 0x2

    .line 1751
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final restoreBrightness()V
    .registers 2

    .line 1961
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1962
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->restoreBrightness()V

    :cond_f
    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 15

    .line 1700
    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v8, 0x4

    move-object v0, v10

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V

    .line 1718
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$5;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {p1, v10, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final sendAcquired(II)V
    .registers 4

    .line 2536
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2537
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_2a

    .line 2538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendAcquired - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2541
    :cond_2a
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public final sendBroadcast(Ljava/lang/String;II)V
    .registers 8

    const-string v0, "Face10"

    .line 2165
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_16

    const-string v2, "faceIndex"

    .line 2167
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    .line 2168
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    const/high16 v2, 0x1000000

    .line 2171
    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2172
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2173
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_5e

    const-string p3, "["

    if-eqz p0, :cond_46

    .line 2174
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

    .line 2176
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

    .line 2179
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

    .line 2545
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 2546
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_2a

    .line 2547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendError - not AcquisitionClient: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2550
    :cond_2a
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    return-void
.end method

.method public final sendImageProcessed(IIII)V
    .registers 13

    .line 2589
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
    .registers 6

    .line 2710
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 2711
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2717
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->setCancellationSignal(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public final setFaceTag(I[B)I
    .registers 9

    .line 1883
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    const/4 v0, 0x0

    const-string v1, "Face10"

    if-nez p0, :cond_14

    const-string/jumbo p0, "setFaceTag(): no face HAL!"

    .line 1885
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1889
    :cond_14
    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2e

    .line 1890
    array-length v3, p2

    if-lez v3, :cond_2e

    .line 1891
    array-length v3, p2

    move v4, v0

    :goto_20
    if-ge v4, v3, :cond_2e

    aget-byte v5, p2, v4

    .line 1892
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1895
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1896
    invoke-interface {p0, p1, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(ILjava/util/ArrayList;)I

    .line 1897
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sehSetFaceTag FINISH ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_55} :catch_57

    const/4 p0, 0x1

    return p0

    :catch_57
    move-exception p0

    .line 1900
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setFaceTag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setHalDeviceId(J)V
    .registers 3

    .line 2581
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHalDeviceId:J

    return-void
.end method

.method public final setSecurityLevel(I)V
    .registers 2

    .line 2008
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSecurityLevel:I

    .line 2009
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->oemStrengthToPropertyStrength(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    return-void
.end method

.method public final declared-synchronized setWakeLock(ZI)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 1985
    :try_start_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "Face10"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1c

    .line 1987
    :cond_f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v1, "Face10"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1989
    :goto_1c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "Face10"

    const-string/jumbo v0, "setWakeLock"

    .line 1990
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    .line 1993
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

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1956
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->startBrightness(I)V

    :cond_15
    return-void
.end method

.method public final startInactivityTimer(I)V
    .registers 6

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInactivityTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final declared-synchronized startOperation(I)V
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "Face10"

    const-string/jumbo v1, "startOperation S"

    .line 1756
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1770

    const/4 v1, 0x1

    .line 1759
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    .line 1760
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mStartOperationTime:J

    const v2, 0xea60

    const/4 v3, 0x0

    if-ne p1, v1, :cond_61

    .line 1764
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 1765
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v2

    goto :goto_32

    :cond_30
    const/16 v0, 0x7530

    :goto_32
    const-string v1, "Face10"

    .line 1766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll timeout set as : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1768
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x1a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1769
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "Biometrics_FaceService"

    const/4 v10, 0x0

    .line 1768
    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_61
    const/4 v4, 0x2

    if-ne p1, v4, :cond_9d

    .line 1771
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result v0

    if-eqz v0, :cond_73

    const/16 v0, 0x1388

    goto :goto_75

    :cond_73
    const/16 v0, 0xfa0

    .line 1773
    :goto_75
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Z

    move-result v4

    if-eqz v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v0

    :goto_7f
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startInactivityTimer(I)V

    .line 1774
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->startBrightness()V

    new-array v2, v1, [B

    .line 1777
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isBrightnessEnable()Z

    move-result v4

    if-eqz v4, :cond_97

    move v4, v1

    goto :goto_98

    :cond_97
    move v4, v3

    :goto_98
    aput-byte v4, v2, v3

    .line 1778
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setFaceTag(I[B)I

    .line 1780
    :cond_9d
    :goto_9d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->isCurrentClientKeyguard()Z

    move-result p1

    add-int/lit16 v0, v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setWakeLock(ZI)V

    .line 1783
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mLastRotation:I

    .line 1784
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonSetRotation(I)V

    const/4 p1, -0x1

    .line 1786
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredInfo:I

    .line 1787
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 1788
    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mSkipAcquiredEventCount:I

    .line 1789
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsCheckedTooDark:Z

    .line 1790
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsAuthenticateResult:Z

    .line 1791
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    const/4 p1, 0x0

    .line 1792
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 1793
    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mBrightnessUp:I

    .line 1794
    iput v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mInsufficient:I

    const-string p1, "Face10"

    const-string/jumbo v0, "startOperation E"

    .line 1796
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e2
    .catchall {:try_start_1 .. :try_end_e2} :catchall_e4

    .line 1807
    monitor-exit p0

    return-void

    :catchall_e4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startOperationTimeout(I)V
    .registers 6

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startOperationTimeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1734
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1735
    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->acquireDVFS(II)V

    return-void
.end method

.method public final declared-synchronized stopOperation()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation S"

    .line 1810
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_17

    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation E : skip"

    .line 1813
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_76

    .line 1814
    monitor-exit p0

    return-void

    .line 1817
    :cond_17
    :try_start_17
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 1818
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x1a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    .line 1819
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Biometrics_FaceService"

    .line 1818
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseWakeLock(Z)V

    goto :goto_41

    :cond_34
    const/4 v3, 0x2

    if-ne v0, v3, :cond_41

    .line 1822
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseWakeLock(Z)V

    .line 1823
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->restoreBrightness()V

    .line 1825
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    .line 1826
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    .line 1828
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mOperationType:I

    .line 1829
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsOperationStarted:Z

    .line 1830
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mIsEnrollPausing:Z

    const-wide/16 v0, -0x1

    .line 1831
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mEnrollStartTime:J

    .line 1832
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_5e

    .line 1833
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    .line 1834
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mMemoryFile:Landroid/os/MemoryFile;

    :cond_5e
    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperation E"

    .line 1837
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_74
    .catchall {:try_start_17 .. :try_end_74} :catchall_76

    .line 1846
    monitor-exit p0

    return-void

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stopOperationTimeout()V
    .registers 3

    const-string v0, "Face10"

    const-string/jumbo v1, "stopOperationTimeout"

    .line 1739
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->releaseDVFS()V

    return-void
.end method

.method public final upBrightnessMax()V
    .registers 1

    .line 1967
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->setBrightnessMax()V

    return-void
.end method

.method public final userActivity()V
    .registers 5

    .line 1979
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1980
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method
