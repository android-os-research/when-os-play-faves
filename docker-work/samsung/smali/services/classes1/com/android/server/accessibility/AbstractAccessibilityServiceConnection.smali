.class public abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"

.field public static final TAKE_SCREENSHOT:Ljava/lang/String; = "takeScreenshot"

.field public static final TRACE_SVC_CLIENT:Ljava/lang/String; = "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient"

.field public static final TRACE_SVC_CONN:Ljava/lang/String; = "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection"

.field public static final TRACE_WM:Ljava/lang/String; = "WindowManagerInternal"

.field public static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public mCaptureFingerprintGestures:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field public mEventTypes:I

.field public mFeedbackType:I

.field public mFetchFlags:I

.field public final mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field public mIsDefault:Z

.field public mLastAccessibilityButtonCallbackState:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationTimeout:J

.field public final mOverlayWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mReceivedAccessibilityButtonCallbackSinceBind:Z

.field public mRequestAccessibilityButton:Z

.field public mRequestFilterKeyEvents:Z

.field public mRequestImeApis:Z

.field public mRequestMultiFingerGestures:Z

.field public mRequestTakeScreenshotTimestampMs:J

.field public mRequestTouchExplorationMode:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mRetrieveInteractiveWindows:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public mSendMotionEvents:Z

.field public mService:Landroid/os/IBinder;

.field public mServiceHandlesDoubleTap:Z

.field public mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field public final mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field public mUsesAccessibilityCache:Z

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$JX9S5EsLuTAYOG8cMdfsnKjNsrA(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->lambda$takeScreenshot$0(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9PZmfmp8unU_juIUYgr7zAwc0g(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->lambda$sendScreenshotFailure$1(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateImeSessionInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAccessibilityEventInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 14

    .line 292
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 201
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 293
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 294
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 295
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 296
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 297
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 298
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 299
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 300
    iput-object p11, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 301
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 302
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 303
    iput-object p5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 304
    new-instance p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 305
    iput-object p12, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    const-string p2, "display"

    .line 306
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p2, "power"

    .line 307
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo p1, "platform_compat"

    .line 309
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 308
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 310
    new-instance p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 319
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method public static synthetic lambda$sendScreenshotFailure$1(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 4

    .line 1332
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "screenshot_status"

    .line 1333
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$takeScreenshot$0(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .registers 4

    .line 1295
    const-class p3, Landroid/hardware/display/DisplayManagerInternal;

    .line 1296
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p3, p1}, Landroid/hardware/display/DisplayManagerInternal;->userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    goto :goto_16

    :cond_12
    const/4 p1, 0x4

    .line 1300
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public final bindInputInternal()V
    .registers 4

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1857
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "bindInput"

    const-string v2, ""

    .line 1858
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->bindInput()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_30

    :catch_17
    move-exception v0

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error binding input to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    return-void
.end method

.method public bindInputLocked()V
    .registers 1

    .line 1681
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->bindInputLocked()V

    return-void
.end method

.method public canReceiveEventsLocked()Z
    .registers 2

    .line 398
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final createImeSessionInternal()V
    .registers 4

    .line 1822
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1825
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "createImeSession"

    const-string v2, ""

    .line 1826
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :cond_13
    new-instance v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$AccessibilityCallback-IA;)V

    .line 1829
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_36

    :catch_1d
    move-exception v0

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error requesting IME session from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public createImeSessionLocked()V
    .registers 1

    .line 1672
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->createImeSessionLocked()V

    return-void
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6

    .line 944
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";gestureSteps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";displayId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dispatchGesture"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1341
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "AbstractAccessibilityServiceConnection"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1342
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1343
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service[label="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 1344
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1343
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1347
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1348
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", isDefault="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1349
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", requestTouchExplorationMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1350
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", requestFilterKeyEvents="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1351
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", retrieveInteractiveWindows="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1352
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", captureFingerprintGestures="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1353
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", requestAccessibilityButton="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1354
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", receivedAccessibilityButtonCallbackSinceBind="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1355
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", lastAccessibilityButtonCallbackState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1356
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", fetchFlags="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1357
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", nonInteractiveUiTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1358
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", interactiveUiTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1361
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", feedbackType"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 1362
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1361
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1363
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", capabilities="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1364
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 1365
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1364
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1366
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1367
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", requestA11yBtn="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p0, "]"

    .line 1368
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1369
    monitor-exit p1

    return-void

    :catchall_1c7
    move-exception p0

    monitor-exit p1
    :try_end_1c9
    .catchall {:try_start_e .. :try_end_1c9} :catchall_1c7

    throw p0
.end method

.method public final ensureWindowsAvailableTimedLocked(I)V
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 1933
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    .line 1938
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1940
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 1943
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    .line 1948
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1949
    :catch_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_45

    .line 1950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_3f

    return-void

    .line 1956
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_44} :catch_28

    goto :goto_28

    :cond_45
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-object/from16 v14, p9

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, "findAccessibilityNodeInfoByAccessibilityId"

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";interactionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";flags="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";interrogatingTid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ";arguments="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_5d
    move/from16 v3, p1

    move-object/from16 v4, p5

    .line 717
    :goto_61
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 718
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v5, 0x1

    .line 719
    :try_start_69
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v5

    const/4 v15, 0x0

    if-nez v5, :cond_74

    .line 721
    monitor-exit v2

    return-object v15

    .line 723
    :cond_74
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v3

    .line 724
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 726
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 725
    invoke-virtual {v5, v6, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_88

    .line 728
    monitor-exit v2

    return-object v15

    .line 730
    :cond_88
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 731
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 730
    invoke-virtual {v5, v6, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v16

    if-nez v16, :cond_98

    .line 733
    monitor-exit v2

    return-object v15

    .line 736
    :cond_98
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 738
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v6, v15

    goto :goto_a6

    :cond_a5
    move-object v6, v1

    .line 741
    :goto_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_69 .. :try_end_a7} :catchall_1ac

    .line 743
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 744
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, [F

    .line 745
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 746
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_bf

    return-object v15

    .line 749
    :cond_bf
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v4, p4

    move/from16 p1, v5

    move-object v14, v6

    move-object v15, v7

    move-wide/from16 v6, p7

    .line 750
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_144

    const-string v1, "findAccessibilityNodeInfoByAccessibilityId"

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, p9

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    :cond_144
    move/from16 v7, p1

    move-object/from16 v20, v14

    move-object/from16 v14, p9

    .line 761
    :goto_14a
    :try_start_14a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    iget v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/2addr v11, v2

    move-wide/from16 v2, p2

    move-object/from16 v4, v20

    move/from16 v5, p4

    move v8, v7

    move v7, v11

    move-wide/from16 v9, p7

    move-object v11, v15

    move-object/from16 v12, v17

    move-object/from16 v13, p9

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 765
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 766
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 765
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_171} :catch_198
    .catchall {:try_start_14a .. :try_end_171} :catchall_184

    .line 772
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v20, :cond_183

    .line 774
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 775
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    :cond_183
    return-object v0

    :catchall_184
    move-exception v0

    .line 772
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v20, :cond_197

    .line 774
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 775
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    .line 777
    :cond_197
    throw v0

    .line 772
    :catch_198
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v20, :cond_1aa

    .line 774
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 775
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    :cond_1aa
    const/4 v0, 0x0

    return-object v0

    :catchall_1ac
    move-exception v0

    .line 741
    :try_start_1ad
    monitor-exit v2
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p7

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "findAccessibilityNodeInfosByText"

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";text="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";interactionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";interrogatingTid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v3, p1

    move-object/from16 v4, p6

    .line 641
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 642
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v5, 0x1

    .line 643
    :try_start_5f
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v5

    const/4 v14, 0x0

    if-nez v5, :cond_6a

    .line 645
    monitor-exit v2

    return-object v14

    .line 647
    :cond_6a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v3

    .line 648
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 650
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 649
    invoke-virtual {v5, v6, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 652
    monitor-exit v2

    return-object v14

    .line 654
    :cond_7e
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 655
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 654
    invoke-virtual {v5, v6, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v15

    if-nez v15, :cond_8e

    .line 657
    monitor-exit v2

    return-object v14

    .line 660
    :cond_8e
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 662
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v6, v14

    goto :goto_9c

    :cond_9b
    move-object v6, v1

    .line 665
    :goto_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_5f .. :try_end_9d} :catchall_199

    .line 667
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 668
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [F

    .line 669
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 670
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b5

    return-object v14

    .line 673
    :cond_b5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v4, p5

    move/from16 p1, v5

    move-object v14, v7

    move-object/from16 v17, v15

    move-object v15, v6

    move-wide/from16 v6, p7

    .line 674
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_137

    const-string v1, "findAccessibilityNodeInfosByText"

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    :cond_137
    move/from16 v6, p1

    .line 684
    :goto_139
    :try_start_139
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    iget v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move v8, v5

    move-object v5, v15

    move v9, v6

    move/from16 v6, p5

    move-wide/from16 v10, p7

    move-object v12, v14

    move-object/from16 v13, v16

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 687
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 688
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 687
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_15e} :catch_185
    .catchall {:try_start_139 .. :try_end_15e} :catchall_171

    .line 694
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_170

    .line 696
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 697
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_170
    return-object v0

    :catchall_171
    move-exception v0

    .line 694
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_184

    .line 696
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 697
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 699
    :cond_184
    throw v0

    .line 694
    :catch_185
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_197

    .line 696
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 697
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_197
    const/4 v0, 0x0

    return-object v0

    :catchall_199
    move-exception v0

    .line 665
    :try_start_19a
    monitor-exit v2
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p7

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "findAccessibilityNodeInfosByViewId"

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";viewIdResName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";interactionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";interrogatingTid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v3, p1

    move-object/from16 v4, p6

    .line 566
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 567
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v5, 0x1

    .line 568
    :try_start_5f
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v5

    const/4 v14, 0x0

    if-nez v5, :cond_6a

    .line 570
    monitor-exit v2

    return-object v14

    .line 572
    :cond_6a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v3

    .line 573
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 575
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 574
    invoke-virtual {v5, v6, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 577
    monitor-exit v2

    return-object v14

    .line 579
    :cond_7e
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 580
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 579
    invoke-virtual {v5, v6, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v15

    if-nez v15, :cond_8e

    .line 582
    monitor-exit v2

    return-object v14

    .line 585
    :cond_8e
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 587
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v6, v14

    goto :goto_9c

    :cond_9b
    move-object v6, v1

    .line 590
    :goto_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_5f .. :try_end_9d} :catchall_199

    .line 592
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 593
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [F

    .line 594
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 595
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b5

    return-object v14

    .line 598
    :cond_b5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v4, p5

    move/from16 p1, v5

    move-object v14, v7

    move-object/from16 v17, v15

    move-object v15, v6

    move-wide/from16 v6, p7

    .line 599
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_137

    const-string v1, "findAccessibilityNodeInfosByViewId"

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    :cond_137
    move/from16 v6, p1

    .line 609
    :goto_139
    :try_start_139
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    iget v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move v8, v5

    move-object v5, v15

    move v9, v6

    move/from16 v6, p5

    move-wide/from16 v10, p7

    move-object v12, v14

    move-object/from16 v13, v16

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 612
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 613
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 612
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_15e} :catch_185
    .catchall {:try_start_139 .. :try_end_15e} :catchall_171

    .line 619
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_170

    .line 621
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 622
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_170
    return-object v0

    :catchall_171
    move-exception v0

    .line 619
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_184

    .line 621
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 622
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 624
    :cond_184
    throw v0

    .line 619
    :catch_185
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_197

    .line 621
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 622
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_197
    const/4 v0, 0x0

    return-object v0

    :catchall_199
    move-exception v0

    .line 590
    :try_start_19a
    monitor-exit v2
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p7

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "findFocus"

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessibilityWindowId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";focusType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";interactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";interrogatingTid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_53
    move-object/from16 v4, p6

    .line 795
    :goto_55
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 796
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 797
    :try_start_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v5

    const/4 v14, 0x0

    if-nez v5, :cond_65

    .line 798
    monitor-exit v3

    return-object v14

    .line 800
    :cond_65
    invoke-virtual {v0, v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v5

    .line 802
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 804
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 803
    invoke-virtual {v1, v6, v0, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_79

    .line 806
    monitor-exit v3

    return-object v14

    .line 808
    :cond_79
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 809
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 808
    invoke-virtual {v1, v6, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v15

    if-nez v15, :cond_89

    .line 811
    monitor-exit v3

    return-object v14

    .line 814
    :cond_89
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, v5, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 816
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    move-object v6, v14

    goto :goto_97

    :cond_96
    move-object v6, v2

    .line 819
    :goto_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_5c .. :try_end_98} :catchall_198

    .line 821
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 822
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [F

    .line 823
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 824
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b0

    return-object v14

    .line 827
    :cond_b0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move v4, v3

    move v3, v5

    move/from16 p1, v4

    move/from16 v4, p5

    move/from16 v5, p1

    move-object v14, v7

    move-object/from16 v17, v15

    move-object v15, v6

    move-wide/from16 v6, p7

    .line 828
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_136

    const-string v1, "findFocus"

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :cond_136
    move/from16 v6, p1

    .line 839
    :goto_138
    :try_start_138
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    iget v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move v8, v5

    move-object v5, v15

    move v9, v6

    move/from16 v6, p5

    move-wide/from16 v10, p7

    move-object v12, v14

    move-object/from16 v13, v16

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 842
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 843
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 842
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_15d} :catch_184
    .catchall {:try_start_138 .. :try_end_15d} :catchall_170

    .line 849
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_16f

    .line 851
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 852
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_16f
    return-object v0

    :catchall_170
    move-exception v0

    .line 849
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_183

    .line 851
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 852
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 854
    :cond_183
    throw v0

    .line 849
    :catch_184
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_196

    .line 851
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 852
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_196
    const/4 v0, 0x0

    return-object v0

    :catchall_198
    move-exception v0

    .line 819
    :try_start_199
    monitor-exit v3
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw v0
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p7

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "focusSearch"

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";direction="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";interactionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";callback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";interrogatingTid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_53
    move/from16 v3, p1

    move-object/from16 v4, p6

    .line 872
    :goto_57
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 873
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 874
    :try_start_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v5

    const/4 v14, 0x0

    if-nez v5, :cond_67

    .line 875
    monitor-exit v2

    return-object v14

    .line 877
    :cond_67
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v3

    .line 878
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 880
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 879
    invoke-virtual {v5, v6, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 882
    monitor-exit v2

    return-object v14

    .line 884
    :cond_7b
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 885
    invoke-interface {v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v6

    .line 884
    invoke-virtual {v5, v6, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v15

    if-nez v15, :cond_8b

    .line 887
    monitor-exit v2

    return-object v14

    .line 890
    :cond_8b
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 892
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    move-object v6, v14

    goto :goto_99

    :cond_98
    move-object v6, v1

    .line 895
    :goto_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_5e .. :try_end_9a} :catchall_196

    .line 897
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object v1

    .line 898
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, [F

    .line 899
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 900
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_b2

    return-object v14

    .line 903
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v4, p5

    move/from16 p1, v5

    move-object v14, v7

    move-object/from16 v17, v15

    move-object v15, v6

    move-wide/from16 v6, p7

    .line 904
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_134

    const-string v1, "focusSearch"

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_136

    :cond_134
    move/from16 v6, p1

    .line 915
    :goto_136
    :try_start_136
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    iget v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move v8, v5

    move-object v5, v15

    move v9, v6

    move/from16 v6, p5

    move-wide/from16 v10, p7

    move-object v12, v14

    move-object/from16 v13, v16

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 918
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 919
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v2

    .line 918
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_136 .. :try_end_15b} :catch_182
    .catchall {:try_start_136 .. :try_end_15b} :catchall_16e

    .line 925
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_16d

    .line 927
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 928
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_16d
    return-object v0

    :catchall_16e
    move-exception v0

    .line 925
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_181

    .line 927
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 928
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 930
    :cond_181
    throw v0

    .line 925
    :catch_182
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_194

    .line 927
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 928
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    :cond_194
    const/4 v0, 0x0

    return-object v0

    :catchall_196
    move-exception v0

    .line 895
    :try_start_197
    monitor-exit v2
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getCapabilities()I
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_6
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result p0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 2081
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getCurrentMagnificationRegion"

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_1f
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1092
    monitor-exit v0

    return-object v1

    .line 1094
    :cond_2b
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1095
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_48

    .line 1098
    :try_start_35
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1099
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1098
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_43

    .line 1102
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v1

    :catchall_43
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    throw p0

    :catchall_48
    move-exception p0

    .line 1104
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public getMagnificationCenterX(I)F
    .registers 7

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getMagnificationCenterX"

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 p0, 0x0

    .line 1114
    monitor-exit v0

    return p0

    .line 1116
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1117
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_46

    .line 1120
    :try_start_32
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1121
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1120
    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterX(IZ)F

    move-result p0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    .line 1123
    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1124
    throw p0

    :catchall_46
    move-exception p0

    .line 1125
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getMagnificationCenterY(I)F
    .registers 7

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getMagnificationCenterY"

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 p0, 0x0

    .line 1135
    monitor-exit v0

    return p0

    .line 1137
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1138
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_46

    .line 1141
    :try_start_32
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1142
    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1141
    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCenterY(IZ)F

    move-result p0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    .line 1144
    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    throw p0

    :catchall_46
    move-exception p0

    .line 1146
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .registers 5

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getMagnificationConfig"

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 p0, 0x0

    .line 1031
    monitor-exit v0

    return-object p0

    .line 1033
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_40

    .line 1034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1036
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    .line 1038
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1039
    throw p0

    :catchall_40
    move-exception p0

    .line 1033
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getMagnificationRegion"

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_1f
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1068
    monitor-exit v0

    return-object v1

    .line 1070
    :cond_2b
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1071
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v2

    .line 1072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_48

    .line 1074
    :try_start_35
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1075
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    .line 1074
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_43

    .line 1078
    :try_start_3e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v1

    :catchall_43
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    throw p0

    :catchall_48
    move-exception p0

    .line 1080
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public getMagnificationScale(I)F
    .registers 5

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getMagnificationScale"

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_29

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1049
    monitor-exit v0

    return p0

    .line 1051
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_41

    .line 1052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1054
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getScale(I)F

    move-result p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3c

    .line 1056
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    throw p0

    :catchall_41
    move-exception p0

    .line 1051
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public getOverlayWindowToken(I)Landroid/os/IBinder;
    .registers 5

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "getOverlayWindowToken"

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    .line 1448
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getRelevantEventTypes()I
    .registers 2

    .line 427
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_a

    :cond_8
    const/16 v0, 0x20

    .line 428
    :goto_a
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 411
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "getServiceInfo"

    const-string v1, ""

    .line 412
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_11
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 416
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 2

    .line 1901
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1903
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "getSystemActions"

    const-string v1, ""

    .line 997
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1003
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_25

    .line 1004
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->getSystemActions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_25
    move-exception p0

    .line 1003
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 519
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "getWindow"

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_30

    .line 525
    :try_start_24
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 526
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v2

    .line 525
    invoke-virtual {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowIdLocked(II)I

    move-result v1

    .line 528
    :cond_30
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 530
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    .line 531
    monitor-exit v0

    return-object v2

    .line 533
    :cond_3c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 534
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 536
    monitor-exit v0

    return-object v2

    .line 538
    :cond_46
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 539
    monitor-exit v0

    return-object v2

    .line 541
    :cond_50
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 542
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 544
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    .line 545
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 546
    monitor-exit v0

    return-object p1

    .line 548
    :cond_63
    monitor-exit v0

    return-object v2

    :catchall_65
    move-exception p0

    .line 549
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_24 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .registers 5

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "getWindowIdForLeashToken"

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_21
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    .line 1464
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "[F",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation

    .line 1696
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .registers 8

    .line 476
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "getWindows"

    const-string v1, ""

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 481
    monitor-exit v0

    return-object v2

    .line 483
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 484
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 486
    monitor-exit v0

    return-object v2

    .line 488
    :cond_24
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 489
    monitor-exit v0

    return-object v2

    .line 491
    :cond_2e
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 493
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5b

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_5b

    .line 497
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 498
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 500
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 503
    invoke-virtual {v1, v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 507
    :cond_5b
    monitor-exit v0

    return-object v1

    :catchall_5d
    move-exception p0

    .line 508
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public final getWindowsByDisplayLocked(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2064
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2068
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2b

    .line 2071
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2073
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 2074
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 2075
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    return-object v0
.end method

.method public getWindowsMainDisplay(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract hasRightsToCurrentUserLocked()Z
.end method

.method public intConnTracingEnabled()Z
    .registers 3

    .line 2356
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x10

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public isConnectedLocked()Z
    .registers 1

    .line 1495
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 3

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable"

    const-string v1, ""

    .line 1010
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    return v1

    .line 1015
    :cond_1e
    invoke-interface {p0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1016
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1017
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 2

    .line 1234
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMultiFingerGesturesEnabled()Z
    .registers 1

    .line 2272
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 1

    .line 2280
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    return p0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .registers 1

    .line 2268
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    return p0
.end method

.method public isTwoFingerPassthroughEnabled()Z
    .registers 1

    .line 2276
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    return p0
.end method

.method public logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    .line 2327
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    move-wide/from16 v7, p4

    invoke-interface {v2, v7, v8}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "call_stack"

    .line 2329
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string/jumbo v3, "ignore_call_stack"

    .line 2331
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/HashSet;

    .line 2332
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2333
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Ljava/lang/StackTraceElement;

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    .line 2332
    invoke-interface/range {v3 .. v15}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    :cond_40
    return-void
.end method

.method public logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2360
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2342
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2351
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2369
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 5

    .line 1754
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 1758
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1759
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1763
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo v1, "onAccessibilityButtonAvailabilityChanged"

    .line 1765
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1764
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_24
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    goto :goto_41

    :catch_28
    move-exception p1

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending accessibility button availability change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    :goto_41
    return-void
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 2

    .line 1668
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    return-void
.end method

.method public final notifyAccessibilityButtonClickedInternal(I)V
    .registers 5

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1742
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "onAccessibilityButtonClicked"

    .line 1743
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception p1

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending accessibility button click to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 2

    .line 1664
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked(I)V

    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12

    .line 1499
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1502
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1503
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_19

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_1a

    :cond_19
    move v3, v5

    :goto_1a
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 1506
    monitor-exit v0

    return-void

    .line 1509
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1510
    monitor-exit v0

    return-void

    .line 1515
    :cond_2a
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1517
    iget-wide v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_58

    const/16 v3, 0x800

    if-eq v1, v3, :cond_58

    .line 1520
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 1521
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v3, :cond_51

    .line 1523
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1524
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1526
    :cond_51
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_5e

    .line 1529
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_5e
    if-eqz v2, :cond_61

    goto :goto_62

    :cond_61
    move v4, v5

    .line 1531
    :goto_62
    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 1533
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1534
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 7

    .line 1580
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v1, :cond_9

    .line 1586
    monitor-exit v0

    return-void

    :cond_9
    if-nez p2, :cond_1c

    .line 1609
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    if-nez p2, :cond_17

    .line 1611
    monitor-exit v0

    return-void

    .line 1613
    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1615
    :cond_1c
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1616
    iget p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_2e

    :cond_2a
    const/4 p1, 0x0

    .line 1618
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :goto_2e
    const/4 p1, 0x1

    .line 1620
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1621
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_81

    .line 1624
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result p1

    if-eqz p1, :cond_53

    const-string/jumbo p1, "onAccessibilityEvent"

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_53
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_56} :catch_5c
    .catchall {:try_start_33 .. :try_end_56} :catchall_5a

    .line 1634
    :goto_56
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_7c

    :catchall_5a
    move-exception p0

    goto :goto_7d

    :catch_5c
    move-exception p0

    :try_start_5d
    const-string p1, "AbstractAccessibilityServiceConnection"

    .line 1632
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during sending "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_5a

    goto :goto_56

    :goto_7c
    return-void

    .line 1634
    :goto_7d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1635
    throw p0

    :catchall_81
    move-exception p0

    .line 1621
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final notifyClearAccessibilityCacheInternal()V
    .registers 4

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1810
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "clearAccessibilityCache"

    const-string v2, ""

    .line 1811
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_13
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    const-string v1, "Error during requesting accessibility info cache to be cleared."

    .line 1815
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 2

    .line 1649
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 3

    .line 1639
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1640
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 5

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1780
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "onGesture"

    .line 1781
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_3b

    :catch_1a
    move-exception v0

    .line 1785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during sending gesture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractAccessibilityServiceConnection"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final notifyMagnificationChangedInternal(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 8

    const-string v0, ", "

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 1708
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "onMagnificationChanged"

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1709
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_30
    invoke-interface {v1, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception p1

    .line 1714
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending magnification changes to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    .line 1655
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1656
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public final notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 5

    .line 1724
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1727
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "onSoftKeyboardShowModeChanged"

    .line 1728
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :cond_16
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception p1

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 2

    .line 1660
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method public final notifySystemActionsChangedInternal()V
    .registers 4

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1795
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "onSystemActionsChanged"

    const-string v2, ""

    .line 1796
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_14
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSystemActionsChanged()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_31

    :catch_18
    move-exception v0

    .line 1800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending system actions change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public notifySystemActionsChangedLocked()V
    .registers 2

    .line 1644
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAdded()V
    .registers 4

    .line 1373
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    .line 1374
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 1375
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 8

    .line 1387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1389
    :try_start_4
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "addWindowToken"

    .line 1391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";TYPE_ACCESSIBILITY_OVERLAY;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_2d
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, p1, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1396
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_45

    .line 1397
    :try_start_38
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1398
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_42

    .line 1400
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception p0

    .line 1398
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 1400
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 7

    .line 1419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "addWindowToken"

    .line 1421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 1422
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";true;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1421
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 1427
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_47

    .line 1428
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1429
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_44

    .line 1431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    .line 1429
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 1431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1432
    throw p0
.end method

.method public onDoubleTap(I)V
    .registers 2

    .line 2389
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTap(I)V

    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 2

    .line 2393
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onDoubleTapAndHold(I)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 7

    .line 324
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_45

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    return v1

    .line 331
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 335
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "onKeyEvent"

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_3e
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {p0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_43} :catch_45

    const/4 p0, 0x1

    return p0

    :catch_45
    :cond_45
    :goto_45
    return v1
.end method

.method public onRemoved()V
    .registers 4

    .line 1405
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    .line 1406
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 1407
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1408
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 955
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "performAccessibilityAction"

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibilityWindowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";action="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";arguments="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ";interactionId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";callback="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ";interrogatingTid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p8

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_5c
    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v11, p8

    .line 963
    :goto_69
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_6c
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_75

    .line 965
    monitor-exit v1

    return v10

    .line 967
    :cond_75
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v3

    .line 968
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 969
    invoke-interface {v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v13

    .line 968
    invoke-virtual {v2, v13, p0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_89

    .line 970
    monitor-exit v1

    return v10

    .line 972
    :cond_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_ad

    .line 973
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_93

    return v10

    .line 976
    :cond_93
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 977
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v2

    iget v10, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-object v1, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v11, p8

    .line 976
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v0

    return v0

    :catchall_ad
    move-exception v0

    .line 972
    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0
.end method

.method public final performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    .line 1977
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1978
    :try_start_b
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    const/4 v11, 0x0

    if-nez v5, :cond_16

    .line 1980
    monitor-exit v4

    return v11

    :cond_16
    const/16 v6, 0x40

    if-eq v3, v6, :cond_21

    const/16 v6, 0x80

    if-ne v3, v6, :cond_1f

    goto :goto_21

    :cond_1f
    move v6, v11

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v6, 0x1

    :goto_22
    if-nez v6, :cond_2f

    .line 1985
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1986
    invoke-virtual {v7, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v7

    if-eqz v7, :cond_2f

    .line 1987
    iget-object v7, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    goto :goto_30

    :cond_2f
    const/4 v7, 0x0

    .line 1989
    :goto_30
    iget-object v8, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1990
    invoke-virtual {v8, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 1991
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v8

    if-eqz v8, :cond_4e

    iget-object v8, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1992
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v8

    if-eqz v8, :cond_4e

    if-nez v6, :cond_4e

    .line 1994
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    .line 1996
    :cond_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_b .. :try_end_4f} :catchall_106

    .line 1997
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2002
    :try_start_57
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v6, 0x3

    invoke-virtual {v4, v9, v10, v6, v11}, Landroid/os/PowerManager;->userActivity(JII)V

    const/16 v4, 0x10

    if-eq v3, v4, :cond_69

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6e

    .line 2006
    :cond_69
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->notifyOutsideTouch(II)V

    :cond_6e
    if-eqz v7, :cond_7b

    .line 2009
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2010
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V

    .line 2012
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_d8

    const-string/jumbo v1, "performAccessibilityAction"

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v6, p3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ";"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p10

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_d8
    move-wide/from16 v6, p3

    move-object/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p10

    .line 2018
    :goto_e2
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v9, p10

    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_f7} :catch_101
    .catchall {:try_start_57 .. :try_end_f7} :catchall_fc

    .line 2027
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_fc
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2028
    throw v0

    .line 2027
    :catch_101
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_106
    move-exception v0

    .line 1996
    :try_start_107
    monitor-exit v4
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 5

    .line 983
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "performGlobalAction"

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 p0, 0x0

    .line 988
    monitor-exit v0

    return p0

    .line 990
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_31

    .line 991
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    move-result p0

    return p0

    :catchall_31
    move-exception p0

    .line 990
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 16

    .line 2047
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2048
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v0

    .line 2049
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2050
    :try_start_9
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2051
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2052
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result p0

    if-eqz p0, :cond_2a

    if-nez v0, :cond_1a

    goto :goto_2a

    .line 2056
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2c

    .line 2057
    new-instance p0, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    return-object p0

    .line 2054
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v1

    return-object p1

    :catchall_2c
    move-exception p0

    .line 2056
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public requestDelegating(I)V
    .registers 2

    .line 2385
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDelegating(I)V

    return-void
.end method

.method public requestDragging(II)V
    .registers 3

    .line 2381
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestDragging(II)V

    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 2

    .line 2377
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestTouchExploration(I)V

    return-void
.end method

.method public resetCurrentMagnification(IZ)Z
    .registers 6

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "resetCurrentMagnification"

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 1181
    monitor-exit v0

    return v2

    .line 1183
    :cond_31
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1184
    monitor-exit v0

    return v2

    .line 1186
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_5c

    .line 1187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1189
    :try_start_40
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1190
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    .line 1191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetCurrentMagnification(IZ)Z

    move-result p2

    if-nez p2, :cond_52

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result p0
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_57

    if-nez p0, :cond_53

    :cond_52
    const/4 v2, 0x1

    .line 1194
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_57
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1195
    throw p0

    :catchall_5c
    move-exception p0

    .line 1186
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public resetLocked()V
    .registers 5

    .line 1468
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    const/4 v0, 0x0

    .line 1472
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_3a

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "init"

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_33
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3a} :catch_3a

    .line 1481
    :catch_3a
    :cond_3a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 1483
    :try_start_3f
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_42
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4a

    :catch_43
    const-string v1, "AbstractAccessibilityServiceConnection"

    const-string v3, "Failed unregistering death link"

    .line 1485
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :goto_4a
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 1490
    :cond_4c
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1491
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    return-void
.end method

.method public resetMagnification(IZ)Z
    .registers 6

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "resetMagnification"

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 1156
    monitor-exit v0

    return v2

    .line 1158
    :cond_31
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1159
    monitor-exit v0

    return v2

    .line 1161
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_5c

    .line 1162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1164
    :try_start_40
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1165
    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object p0

    .line 1166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetFullscreenMagnification(IZ)Z

    move-result p2

    if-nez p2, :cond_52

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->isMagnifying(I)Z

    move-result p0
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_57

    if-nez p0, :cond_53

    :cond_52
    const/4 v2, 0x1

    .line 1169
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_57
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    throw p0

    :catchall_5c
    move-exception p0

    .line 1161
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_12

    .line 1915
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p0

    return p0

    :cond_12
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1c

    .line 1918
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(I)I

    move-result p0

    return p0

    :cond_1c
    return p1
.end method

.method public final resolveAccessibilityWindowIdLocked(I)I
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_12

    .line 1908
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p0

    return p0

    :cond_12
    return p1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 5

    .line 936
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";gestureSteps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sendGesture"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    .registers 4

    .line 1331
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda1;-><init>(ILandroid/os/RemoteCallback;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1336
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1331
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 1311
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    .line 1312
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    .line 1313
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 1315
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "screenshot_status"

    const/4 v2, 0x0

    .line 1316
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "screenshot_hardwareBuffer"

    .line 1318
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "screenshot_colorSpace"

    .line 1320
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "screenshot_timestamp"

    .line 1321
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1325
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1326
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    return-void
.end method

.method public setAnimationScale(F)V
    .registers 9

    const-string v0, "animator_duration_scale"

    const-string/jumbo v1, "transition_animation_scale"

    const-string/jumbo v2, "window_animation_scale"

    .line 2400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2402
    :try_start_c
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2403
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2402
    invoke-static {v5, v2, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2404
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2405
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2404
    invoke-static {v5, v1, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2408
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 2409
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2408
    invoke-static {v5, v0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const/4 p1, 0x3

    .line 2412
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    if-ge v2, p1, :cond_49

    .line 2420
    aget-object v5, v0, v2

    .line 2421
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v1, 0x1

    goto :goto_49

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2427
    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "remove_animations"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_55
    .catchall {:try_start_c .. :try_end_55} :catchall_59

    .line 2432
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_59
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    throw p0
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method public setCacheEnabled(Z)V
    .registers 5

    .line 2310
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "setCacheEnabled"

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2315
    :try_start_21
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    .line 2316
    :try_start_24
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 2317
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 2318
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    .line 2318
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    throw p0
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5

    .line 346
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 347
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 348
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-eqz v0, :cond_1a

    .line 351
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    :cond_1a
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 354
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 357
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    .line 358
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_43

    .line 360
    :cond_3d
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 364
    :cond_43
    :goto_43
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_50

    .line 365
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_56

    .line 367
    :cond_50
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    :goto_56
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5c

    move v0, v1

    goto :goto_5d

    :cond_5c
    move v0, v2

    .line 370
    :goto_5d
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_65

    move v0, v1

    goto :goto_66

    :cond_65
    move v0, v2

    .line 372
    :goto_66
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_6e

    move v0, v1

    goto :goto_6f

    :cond_6e
    move v0, v2

    .line 374
    :goto_6f
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_77

    move v0, v1

    goto :goto_78

    :cond_77
    move v0, v2

    .line 376
    :goto_78
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v2

    .line 378
    :goto_81
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_89

    move v0, v1

    goto :goto_8a

    :cond_89
    move v0, v2

    .line 380
    :goto_8a
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_92

    move v0, v1

    goto :goto_93

    :cond_92
    move v0, v2

    .line 382
    :goto_93
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_9b

    move v0, v1

    goto :goto_9c

    :cond_9b
    move v0, v2

    .line 384
    :goto_9c
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_a4

    move v0, v1

    goto :goto_a5

    :cond_a4
    move v0, v2

    .line 386
    :goto_a5
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_ae

    goto :goto_af

    :cond_ae
    move v1, v2

    .line 388
    :goto_af
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    return-void
.end method

.method public setFocusAppearance(II)V
    .registers 5

    .line 2303
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";color="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setFocusAppearance"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setGestureDetectionPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    :cond_25
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    return-void
.end method

.method public final setImeSessionEnabledInternal(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 6

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 1842
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "createImeSession"

    const-string v2, ""

    .line 1843
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    :cond_15
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_32

    :catch_19
    move-exception p1

    .line 1847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error requesting IME session from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 3

    .line 1677
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 5

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setMagnificationCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :cond_25
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    return-void
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .registers 8

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "setMagnificationSpec"

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    .line 1207
    monitor-exit v0

    return v2

    .line 1209
    :cond_35
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1210
    monitor-exit v0

    return v2

    .line 1212
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_59

    .line 1214
    :try_start_43
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 1215
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v3

    .line 1216
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, p1, p2, p3, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    move-result p0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_54

    .line 1219
    :try_start_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_54
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    throw p0

    :catchall_59
    move-exception p0

    .line 1221
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 5

    .line 403
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setOnKeyEventResult"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    return-void
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 3

    .line 2373
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setServiceDetectsGesturesEnabled(IZ)V

    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8

    .line 433
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "setServiceInfo"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 438
    :try_start_22
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_5c

    .line 442
    :try_start_25
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 443
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v4, :cond_34

    .line 445
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-virtual {v4, v5, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 446
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_37

    .line 448
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 450
    :goto_37
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    if-nez v3, :cond_49

    .line 451
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-eqz p1, :cond_49

    .line 452
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_54

    :cond_49
    if-eqz v3, :cond_54

    .line 453
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    if-nez p1, :cond_54

    .line 454
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 456
    :cond_54
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_59

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_59
    move-exception p0

    .line 456
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 4

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSoftKeyboardCallbackEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_1d
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTouchExplorationPassthroughRegion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :cond_25
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    return-void
.end method

.method public final startInputInternal(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1888
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "startInput"

    .line 1889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " restarting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_2b
    invoke-interface {v0, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_48

    :catch_2f
    move-exception p1

    .line 1894
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error starting input to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AbstractAccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    .line 1690
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    .line 393
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public svcClientTracingEnabled()Z
    .registers 3

    .line 2338
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x2

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public svcConnTracingEnabled()Z
    .registers 3

    .line 2347
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 9

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "takeScreenshot"

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1251
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3e

    sub-long v2, v0, v2

    const-wide/16 v4, 0x14d

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3e

    const/4 p1, 0x3

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1258
    :cond_3e
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 1260
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1261
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_4f

    const/4 p1, 0x1

    .line 1262
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1264
    monitor-exit v0

    return-void

    .line 1267
    :cond_4f
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1271
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_b1

    .line 1273
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_65

    const/4 p1, 0x2

    .line 1274
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1282
    :cond_65
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 1283
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1284
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_a5

    .line 1285
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_85

    .line 1286
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_85

    goto :goto_a5

    .line 1292
    :cond_85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1294
    :try_start_89
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V

    const/4 p0, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1303
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1294
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_a0

    .line 1305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    throw p0

    .line 1287
    :cond_a5
    :goto_a5
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    return-void

    .line 1268
    :cond_a9
    :try_start_a9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Services don\'t have the capability of taking the screenshot."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b1
    move-exception p0

    .line 1271
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_b1

    throw p0
.end method

.method public final unbindInputInternal()V
    .registers 4

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1872
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "unbindInput"

    const-string v2, ""

    .line 1873
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_14
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->unbindInput()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    goto :goto_31

    :catch_18
    move-exception v0

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error unbinding input to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public unbindInputLocked()V
    .registers 1

    .line 1685
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->unbindInputLocked()V

    return-void
.end method

.method public final wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1551
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 1552
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1c

    return v1

    .line 1557
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1558
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_26

    return v1

    .line 1562
    :cond_26
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1563
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1564
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    .line 1566
    :goto_38
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1
.end method

.method public wmTracingEnabled()Z
    .registers 3

    .line 2365
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v0, 0x200

    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method
