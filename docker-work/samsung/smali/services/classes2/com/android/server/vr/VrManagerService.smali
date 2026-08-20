.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final DEFAULT_MODE:I = 0x0

.field public static final EVENT_LOG_SIZE:I = 0x40

.field public static final FLAG_ALL:I = 0x7

.field public static final FLAG_AWAKE:I = 0x1

.field public static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SCREEN_ON:I = 0x2

.field public static final INVALID_APPOPS_MODE:I = -0x1

.field public static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field public static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field public static final MSG_VR_STATE_CHANGE:I = 0x0

.field public static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field public static final VR_MODE_DISABLED:I = 0x2

.field public static final VR_MODE_ENABLED:I = 0x1

.field public static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field public mBootsToVr:Z

.field public mChangedVrState:I

.field public mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field public mContext:Landroid/content/Context;

.field public mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field public mCurrentVrModeComponent:Landroid/content/ComponentName;

.field public mCurrentVrModeUser:I

.field public mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field public mDefaultVrService:Landroid/content/ComponentName;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field public mGuard:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogLimitHit:Z

.field public final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field public mNotificationManager:Landroid/app/INotificationManager;

.field public final mOverlayToken:Landroid/os/IBinder;

.field public mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field public mPersistentVrModeEnabled:Z

.field public final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviousCoarseLocationMode:I

.field public mPreviousManageOverlayMode:I

.field public mRunning2dInVr:Z

.field public mStandby:Z

.field public mSystemSleepFlags:I

.field public mUseStandbyToExitVrMode:Z

.field public mUserUnlocked:Z

.field public mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field public mVrAppProcessId:I

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public mVrModeAllowed:Z

.field public mVrModeEnabled:Z

.field public final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mWasDefaultGranted:Z

.field public mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public static synthetic $r8$lambda$CKoLjJL2Wj20zttxakv9XGG6YB8(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->lambda$onUserSwitching$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBootsToVr(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChangedVrState(Lcom/android/server/vr/VrManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vr/VrManagerService;->mChangedVrState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComponentObserver(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVrCompositorService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVrModeUser(Lcom/android/server/vr/VrManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVrService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentVrModeEnabled(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVrModeAllowed(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVrModeEnabled(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmXrManagerService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/XrManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmChangedVrState(Lcom/android/server/vr/VrManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mChangedVrState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddPersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcallFocusedActivityChangedLocked(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconsumeAndApplyPendingStateLocked(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpStateTransitions(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPersistentVrMode(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetVr2dDisplayId(Lcom/android/server/vr/VrManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetVrMode(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgrantCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantNotificationPolicyAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasVrPackage(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCurrentVrListener(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDisplayStateVr(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->isDisplayStateVr()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNormalRefreshRateMode(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->isNormalRefreshRateMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogEvent(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVrModeChangedLocked(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeNotificationPolicyAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAndBindCompositor(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPersistentVrModeEnabled(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScreenOn(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStandbyEnabled(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setStandbyEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserUnlocked(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVrMode(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 443
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 139
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 156
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 158
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    const/4 p1, -0x1

    .line 160
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 161
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 164
    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 165
    new-instance p1, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager-IA;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 p1, 0x5

    .line 168
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 186
    new-instance p1, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 314
    new-instance p1, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance p1, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 1203
    new-instance p1, Lcom/android/server/vr/VrManagerService$7;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$7;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method public static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_39

    .line 1138
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_39

    .line 1142
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 1144
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1145
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_15

    :cond_28
    if-nez v2, :cond_2f

    const/16 v2, 0x3a

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_15

    .line 1154
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method private static native initializeNative()V
.end method

.method private synthetic lambda$onUserSwitching$0()V
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 847
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private static native setVrModeNative(Z)V
.end method


# virtual methods
.method public final addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    .line 1501
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    .line 1493
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final callFocusedActivityChangedLocked()V
    .registers 6

    .line 1013
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 1014
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 1015
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 1016
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v4, Lcom/android/server/vr/VrManagerService$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    return-void
.end method

.method public final changeVrModeLocked(Z)V
    .registers 3

    .line 1173
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_2d

    .line 1174
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VR mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_17

    const-string v0, "enabled"

    goto :goto_19

    :cond_17
    const-string v0, "disabled"

    :goto_19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VrManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    :cond_2d
    return-void
.end method

.method public final consumeAndApplyPendingStateLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1289
    invoke-virtual {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    return-void
.end method

.method public final consumeAndApplyPendingStateLocked(Z)V
    .registers 10

    .line 1300
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_18

    .line 1301
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget-object v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object v7, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    const/4 p1, 0x0

    .line 1304
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    goto :goto_24

    :cond_18
    if-eqz p1, :cond_24

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 1306
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public final createAndConnectService(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1160
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1161
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connecting "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VrManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14

    .line 1277
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x3

    :goto_7
    move v8, v0

    .line 1279
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p0

    return-object p0
.end method

.method public final createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14

    .line 1265
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    move v8, v0

    .line 1267
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040ef2

    sget-object v6, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    const-string v5, "android.settings.VR_LISTENER_SETTINGS"

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p0

    return-object p0
.end method

.method public final dumpStateTransitions(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1328
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1330
    :try_start_a
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "  "

    .line 1331
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "None"

    .line 1332
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v2, :cond_25

    const-string v2, "..."

    .line 1336
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    :cond_25
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1340
    invoke-interface {v2, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b

    .line 1342
    :cond_3f
    monitor-exit v1

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .registers 6

    .line 701
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 702
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 707
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "enabled_notification_listeners"

    .line 1122
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1125
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_25

    const-string p2, ":"

    .line 1127
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1128
    array-length p2, p0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p2, :cond_25

    aget-object v1, p0, v0

    .line 1129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1130
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    return-object p1
.end method

.method public final getPersistentVrMode()Z
    .registers 2

    .line 1515
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1517
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getStateAsString()Ljava/lang/String;
    .registers 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x1

    const-string v2, ""

    if-eqz v1, :cond_10

    const-string v1, "awake, "

    goto :goto_11

    :cond_10
    move-object v1, v2

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "screen_on, "

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget p0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2a

    const-string v2, "keyguard_off"

    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVr2dDisplayId()I
    .registers 2

    .line 1421
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz p0, :cond_9

    .line 1422
    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_9
    const-string p0, "VrManagerService"

    const-string v0, "Vr2dDisplay is null!"

    .line 1424
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getVrMode()Z
    .registers 2

    .line 1509
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1511
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1088
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1090
    :try_start_8
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_32

    .line 1094
    :catch_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not grant coarse location permission, package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VrManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public final grantNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 7

    .line 1058
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1059
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.service.notification.NotificationListenerService"

    const-string v2, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 1060
    invoke-static {p0, p2, v1, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1065
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 1067
    :try_start_33
    invoke-virtual {v0, v1, p2, v2}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_1c

    :catch_37
    move-exception v1

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not grant NLS access to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VrManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_4f
    return-void
.end method

.method public final grantNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 3

    .line 1045
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 1046
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    return-void
.end method

.method public final hasVrPackage(Landroid/content/ComponentName;I)I
    .registers 4

    .line 1473
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1475
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isCurrentVrListener(Ljava/lang/String;I)Z
    .registers 6

    .line 1479
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1480
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1481
    monitor-exit v0

    return v2

    .line 1483
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result p0

    if-ne p2, p0, :cond_21

    const/4 v2, 0x1

    :cond_21
    monitor-exit v0

    return v2

    :catchall_23
    move-exception p0

    .line 1485
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final isDefaultAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 1030
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 1034
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_1f

    .line 1038
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final isDisplayStateVr()Z
    .registers 3

    .line 1247
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public final isNormalRefreshRateMode()Z
    .registers 3

    .line 1241
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1242
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1243
    iget p0, v0, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-nez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public final isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 1115
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public final logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 5

    .line 1318
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_15

    .line 1320
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    const/4 v1, 0x1

    .line 1321
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 1323
    :cond_15
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1324
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final logStateLocked()V
    .registers 10

    .line 1311
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 1312
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_a
    move-object v4, v0

    .line 1313
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v6, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 11

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_aa

    .line 780
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 781
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    const-string p1, "notification"

    .line 784
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 783
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 785
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_1e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 787
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 788
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 789
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string v3, "enabled_vr_listeners"

    const-string v5, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string v6, "android.service.vr.VrListenerService"

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    invoke-static/range {v1 .. v8}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 795
    invoke-virtual {p1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 796
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_a7

    .line 800
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object p1

    .line 801
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_5b

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    goto :goto_62

    :cond_5b
    const-string p1, "VrManagerService"

    const-string v0, "No default vr listener service found."

    .line 804
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 809
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay;

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 811
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 812
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 814
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    .line 816
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 817
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_c0

    :catchall_a7
    move-exception p0

    .line 796
    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0

    :cond_aa
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c0

    .line 827
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 828
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public onEnabledComponentChanged()V
    .registers 9

    .line 510
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 513
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 515
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 516
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 517
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-virtual {p0, v4}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 519
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 522
    :cond_34
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v1, v2}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 524
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v1, :cond_3f

    .line 525
    monitor-exit v0

    return-void

    :cond_3f
    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 531
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v1, :cond_49

    .line 532
    monitor-exit v0

    return-void

    .line 536
    :cond_49
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 537
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v5

    iget v6, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v1, p0

    .line 536
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 539
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 764
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 766
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 767
    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mChangedVrState:I

    .line 768
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_40

    const-string/jumbo v0, "ro.boot.vr"

    .line 770
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    const-string/jumbo v0, "persist.vr.use_standby_to_exit_vr_mode"

    .line 772
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    move v1, v2

    :cond_26
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 773
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "vrmanager"

    .line 774
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_40
    move-exception p0

    .line 768
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 837
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 838
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 839
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 862
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 863
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 864
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 854
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 855
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 856
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 844
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onVrModeChangedLocked()V
    .registers 3

    .line 1256
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1257
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    const/4 v1, 0x0

    .line 1256
    invoke-virtual {v0, v1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    .line 1505
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    .line 1497
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1102
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1104
    :try_start_8
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_32

    .line 1108
    :catch_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not revoke coarse location permission, package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VrManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public final revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 6

    .line 1076
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 1077
    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v0

    .line 1079
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_12

    .line 1080
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    .line 1081
    invoke-virtual {p0, v1, p2, v2}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_12

    :cond_2f
    return-void
.end method

.method public final revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 3

    .line 1050
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 1052
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setAndBindCompositor(Landroid/content/ComponentName;)V
    .registers 6

    .line 1429
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1432
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    .line 1433
    :try_start_b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 1434
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 1436
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    .line 1434
    :try_start_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    .line 1436
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    throw p0
.end method

.method public final setPersistentModeAndNotifyListenersLocked(Z)V
    .registers 4

    .line 1460
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1463
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VrManagerService"

    .line 1464
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1466
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1468
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setPersistentVrModeEnabled(Z)V
    .registers 9

    .line 1397
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    if-nez p1, :cond_11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 1401
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1403
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final setScreenOn(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method public final setStandbyEnabled(Z)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-nez v1, :cond_10

    const-string p0, "VrManagerService"

    const-string p1, "Attempting to set standby mode on a non-standalone device"

    .line 306
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    monitor-exit v0

    return-void

    .line 309
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 310
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 311
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final setSystemState(IZ)V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eqz p2, :cond_b

    or-int/2addr p1, v1

    .line 277
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    goto :goto_f

    :cond_b
    not-int p1, p1

    and-int/2addr p1, v1

    .line 279
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 281
    :goto_f
    iget p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v1, p1, :cond_16

    .line 283
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 285
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final setUserUnlocked()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 298
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 300
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 4

    .line 1408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1410
    :try_start_4
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz p0, :cond_f

    .line 1411
    invoke-virtual {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    .line 1415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "VrManagerService"

    const-string p1, "Vr2dDisplay is null!"

    .line 1417
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1a
    move-exception p0

    .line 1415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1416
    throw p0
.end method

.method public final setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 22

    move-object/from16 v0, p0

    .line 1351
    iget-object v8, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_13

    .line 1357
    :try_start_9
    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v3, :cond_e

    goto :goto_13

    :cond_e
    move v3, v1

    goto :goto_14

    :catchall_10
    move-exception v0

    goto/16 :goto_69

    :cond_13
    :goto_13
    move v3, v2

    :goto_14
    if-nez p1, :cond_1c

    .line 1358
    iget-boolean v4, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    if-eqz v4, :cond_23

    .line 1360
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    move-object v5, v1

    goto :goto_25

    :cond_23
    move-object/from16 v5, p2

    .line 1365
    :goto_25
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    move-object v9, v1

    move v10, v3

    move v11, v4

    move-object v12, v5

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1368
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v6, :cond_3c

    .line 1372
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1373
    monitor-exit v8

    return-void

    :cond_3c
    if-nez v3, :cond_51

    .line 1376
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v6, :cond_51

    .line 1379
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v3, :cond_4d

    .line 1380
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1384
    :cond_4d
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1385
    monitor-exit v8

    return-void

    .line 1387
    :cond_51
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 1388
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 1391
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1393
    monitor-exit v8

    return-void

    :goto_69
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_10

    throw v0
.end method

.method public final updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .registers 6

    .line 1441
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    const-string v1, "VrManagerService"

    if-eqz v0, :cond_29

    .line 1442
    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1444
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1447
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    :cond_29
    if-eqz p2, :cond_4c

    .line 1450
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_4c

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1455
    invoke-virtual {p1}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    :cond_4c
    return-void
.end method

.method public final updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 924
    :try_start_e
    iget-object v7, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v7

    if-nez v7, :cond_18

    const/4 v7, 0x1

    goto :goto_19

    :cond_18
    const/4 v7, 0x0

    :goto_19
    if-eqz v7, :cond_1f

    if-eqz p1, :cond_1f

    const/4 v10, 0x1

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 927
    :goto_20
    iget-boolean v11, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_10c

    if-nez v11, :cond_2a

    if-nez v10, :cond_2a

    .line 1008
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 931
    :cond_2a
    :try_start_2a
    iget-object v11, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v12, 0x0

    if-eqz v11, :cond_38

    .line 932
    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_39

    :cond_38
    move-object v11, v12

    .line 933
    :goto_39
    iget v13, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 936
    invoke-virtual {v0, v10}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_10c

    const/16 v14, -0x2710

    const-string v15, " for user "

    const-string v8, "VrManagerService"

    if-nez v10, :cond_80

    .line 941
    :try_start_46
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_7c

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Leaving VR mode, disconnecting "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 943
    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 944
    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 946
    invoke-virtual {v0, v14, v12}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 947
    iput-object v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v8, 0x0

    goto :goto_c3

    :cond_7c
    const/4 v8, 0x0

    const/16 v16, 0x1

    goto :goto_c5

    .line 953
    :cond_80
    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v10, :cond_bf

    .line 956
    invoke-virtual {v10, v2, v3}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 957
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VR mode component changed to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", disconnecting "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 958
    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 959
    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 957
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0, v14, v12}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 961
    invoke-virtual {v0, v2, v3}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    goto :goto_c2

    .line 970
    :cond_bf
    invoke-virtual {v0, v2, v3}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    :goto_c2
    const/4 v8, 0x1

    :goto_c3
    const/16 v16, 0x0

    :goto_c5
    if-nez v4, :cond_cb

    .line 975
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_d3

    :cond_cb
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 976
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    :cond_d3
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    if-eq v2, v1, :cond_d8

    :cond_d7
    const/4 v8, 0x1

    .line 980
    :cond_d8
    iput-object v4, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 981
    iput-boolean v1, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    move/from16 v1, p5

    .line 982
    iput v1, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 984
    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    if-eq v1, v3, :cond_e8

    .line 985
    iput v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    const/4 v9, 0x1

    goto :goto_e9

    :cond_e8
    move v9, v8

    .line 989
    :goto_e9
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_f5

    .line 990
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 991
    :cond_f5
    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 995
    invoke-virtual {v0, v12, v1, v11, v13}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 998
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_103

    if-eqz v9, :cond_103

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    :cond_103
    if-nez v16, :cond_108

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_108
    .catchall {:try_start_46 .. :try_end_108} :catchall_10c

    .line 1008
    :cond_108
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_10c
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    throw v0
.end method

.method public final updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 889
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    .line 892
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 895
    :try_start_b
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    .line 897
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    throw p0
.end method

.method public final updateOverlayStateLocked(Ljava/lang/String;II)V
    .registers 11

    .line 868
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eq p3, p2, :cond_19

    const/16 v2, 0x18

    const/4 v3, 0x0

    .line 872
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object v1, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_19
    const/4 p3, 0x0

    if-eqz p1, :cond_2c

    .line 879
    new-instance p3, Landroid/os/PackageTagsList$Builder;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    invoke-virtual {p3, p1}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p1

    move-object v5, p1

    goto :goto_2d

    :cond_2c
    move-object v5, p3

    :goto_2d
    const/16 v2, 0x18

    .line 882
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    return-void
.end method

.method public final updateVrModeAllowedLocked()V
    .registers 15

    .line 228
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    .line 229
    :goto_d
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v4, :cond_17

    move v4, v1

    goto :goto_18

    :cond_17
    move v4, v2

    .line 230
    :goto_18
    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1f

    if-eqz v3, :cond_27

    :cond_1f
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    if-eqz v3, :cond_27

    if-nez v4, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 232
    :goto_28
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v4, v3, :cond_77

    .line 233
    iput-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v3, :cond_48

    if-eqz v0, :cond_35

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 239
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v0, :cond_77

    const/4 v2, 0x1

    .line 240
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_77

    .line 245
    :cond_48
    invoke-virtual {p0, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 248
    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v8, :cond_6a

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_6a

    .line 249
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v9, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 250
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v11

    iget v12, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    .line 251
    :goto_6b
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    .line 254
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    :cond_77
    :goto_77
    return-void
.end method
