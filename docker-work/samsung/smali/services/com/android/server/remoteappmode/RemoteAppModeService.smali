.class public Lcom/android/server/remoteappmode/RemoteAppModeService;
.super Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;
.source "RemoteAppModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;,
        Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;,
        Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;,
        Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "profile"

.field public static final INVALID_DISPLAY_ID:I = -0x1

.field public static final NAME_LIMIT:I = 0x64

.field public static final PENDING_INTENT_CALL_BY_LTW:Ljava/lang/String; = "PendingIntentCallByLTW"

.field public static final PROTOCOL_REMOTEAPPMODE_VERSION_3_NOV_2020:I = 0x3

.field public static final PROTOCOL_REMOTEAPPMODE_VERSION_4_FEB_2021:I = 0x4

.field public static final PROTOCOL_REMOTEAPPMODE_VERSION_5_NOV_2021:I = 0x5

.field public static final PROTOCOL_REMOTEAPPMODE_VERSION_7_MAR_2022:I = 0x7

.field public static final PROTOCOL_VERSION:I = 0x7

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_PREFIX:Ljava/lang/String; = "[RAMS]"

.field public static final USE_LINK_TO_WINDOWS_REMOTE_APP_MODE_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"


# instance fields
.field public mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

.field public mIsBootComplete:Z

.field public mIsRemoteAppModeEnabled:Z

.field public mIsStartActivityListenerRegistered:Z

.field public mLTWProtocolVersion:I

.field public mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

.field public final mRemoteAppControllerCallbacks:Lcom/android/server/wm/RemoteAppControllerCallbacks;

.field public final mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

.field public final mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

.field public final mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

.field public final mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

.field public final mThread:Lcom/android/server/ServiceThread;

.field public mTransferTaskMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public mVirtualDisplayMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/remoteappmode/RemoteAppModeService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/remoteappmode/RemoteAppModeService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/remoteappmode/RemoteAppModeService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartActivityInterceptNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskChangeNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/TaskChangeNotifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransferTaskMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDisplayMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/android/server/remoteappmode/RemoteAppModeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/database/ContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckRemoteAppModeEnabled(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeStates(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->initializeStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSecuredAppLaunched(Lcom/android/server/remoteappmode/RemoteAppModeService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSecuredAppRemoved(Lcom/android/server/remoteappmode/RemoteAppModeService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onSecuredAppRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserSwitching(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveCallerInfo(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/remoteappmode/RemoteAppModeService;->saveCallerInfo(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RAMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    .line 71
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x3

    const-string v1, "RAMS"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    sput-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    const/16 v1, -0x2710

    .line 88
    iput v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const/4 v1, 0x3

    .line 111
    iput v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    .line 128
    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$1;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/wm/RemoteAppControllerCallbacks;

    .line 269
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "remoteappmode"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mThread:Lcom/android/server/ServiceThread;

    .line 270
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    .line 275
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    .line 276
    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    .line 279
    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    .line 280
    new-instance v1, Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 281
    new-instance v1, Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/SecureAppNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    .line 282
    new-instance v1, Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/RotationChangeNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    .line 283
    new-instance v1, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    .line 284
    new-instance v1, Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-direct {v1}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;-><init>()V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    .line 285
    new-instance v1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    .line 286
    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector;

    invoke-direct {v1, p1}, Lcom/android/server/remoteappmode/AnrCollector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

    .line 288
    new-instance p1, Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/remoteappmode/RemoteAppModeService$Receiver;->register()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/remoteappmode/RemoteAppModeService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getTaskInfo(Landroid/content/Context;I)Landroid/app/TaskInfo;
    .registers 4

    const-string v0, "activity"

    .line 620
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 622
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 625
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 626
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, p1, :cond_15

    return-object v0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final checkPermissionAndAAoWFeature(Ljava/lang/String;)V
    .registers 3

    .line 429
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_LTW_REMOTE_APP"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    return-void

    .line 434
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LTW_REMOTE_APP feature is not enabled in this device."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkRemoteAppModeEnabled()V
    .registers 5

    .line 808
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 809
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    .line 810
    invoke-virtual {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 817
    :goto_2f
    iget-boolean v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    if-eq v1, v0, :cond_54

    .line 818
    sget-boolean v1, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRemoteAppModeEnabled, isEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_4d
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsRemoteAppModeEnabled:Z

    .line 821
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->notifyRemoteAppModeStateChanged(Z)V

    :cond_54
    return-void
.end method

.method public clearAll()V
    .registers 2

    const-string v0, "Permission required to clear all resources"

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->releaseAllVirtualDisplays()V

    .line 830
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->releaseSecureAppNotifier()V

    .line 831
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->releaseTaskChangeNotifier()V

    return-void
.end method

.method public final closeAllTask(I)V
    .registers 5

    .line 460
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 461
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 464
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v2, p1, :cond_17

    .line 465
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    goto :goto_17

    :cond_2e
    return-void
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I
    .registers 22

    move-object v7, p0

    const-string v0, "createVirtualDisplay"

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 398
    :try_start_a
    iget-object v8, v7, Lcom/android/server/remoteappmode/RemoteAppModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const v14, 0x8501

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v14}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v8
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_6b

    .line 403
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    new-instance v9, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-interface/range {p6 .. p6}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/hardware/display/VirtualDisplay;Landroid/os/IBinder;II)V

    .line 408
    :try_start_34
    invoke-interface/range {p6 .. p6}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 410
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    :goto_41
    iget-object v3, v7, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v8, :cond_57

    .line 415
    :try_start_46
    iget-object v0, v7, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    .line 419
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_68

    if-eqz v8, :cond_66

    .line 422
    invoke-virtual {v8}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0

    :cond_66
    const/4 v0, -0x1

    return v0

    :catchall_68
    move-exception v0

    .line 419
    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    :catchall_6b
    move-exception v0

    .line 403
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1005
    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_23

    .line 1007
    array-length p1, p3

    if-eqz p1, :cond_23

    const/4 p1, 0x0

    aget-object v0, p3, p1

    const-string v1, "-a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_23

    .line 1016
    :cond_1c
    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_41

    .line 1017
    aget-object p0, p3, p1

    goto :goto_41

    .line 1008
    :cond_23
    :goto_23
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "RemoteAppModeService (dumpsys remoteappmode):"

    .line 1009
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    invoke-static {p1}, Lcom/android/server/remoteappmode/Log;->dump(Ljava/io/PrintWriter;)V

    .line 1011
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1012
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1014
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1015
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_41
    :goto_41
    return-void
.end method

.method public final dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1024
    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1026
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "Configuration"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1027
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1028
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_size_forced"

    .line 1029
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_SIZE_FORCED"

    .line 1028
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1030
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1031
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_density_forced"

    const/4 v2, 0x0

    .line 1032
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_DENSITY_FORCED"

    .line 1031
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1035
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const-string/jumbo v2, "screen_off_timeout"

    .line 1036
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCREEN_OFF_TIMEOUT"

    .line 1035
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1038
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1039
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 1040
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHOW_IME_WITH_HARD_KEYBOARD"

    .line 1039
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1042
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Permission Denied"

    .line 916
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 921
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-interface {v2, p1, p0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_12} :catch_18
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 927
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_16
    move-exception p0

    goto :goto_51

    :catch_18
    move-exception p0

    .line 925
    :try_start_19
    sget-object p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeTask: SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :catch_34
    move-exception p0

    .line 923
    sget-object p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeTask: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_16

    goto :goto_12

    :goto_50
    return-void

    .line 927
    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw p0
.end method

.method public getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 6

    .line 933
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string v2, "Permission Denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 938
    :try_start_d
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mAnrCollector:Lcom/android/server/remoteappmode/AnrCollector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/AnrCollector;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_18
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 942
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    :catchall_16
    move-exception p0

    goto :goto_35

    :catch_18
    move-exception p0

    .line 940
    :try_start_19
    sget-object p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " removeTask: SecurityException "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_16

    goto :goto_12

    :goto_34
    return-void

    .line 942
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    throw p0
.end method

.method public getProtocolVersion()I
    .registers 1

    const/4 p0, 0x7

    return p0
.end method

.method public final hasExtraProfile(Landroid/content/Intent;)Z
    .registers 4

    .line 581
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const-string/jumbo p1, "profile"

    .line 582
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    .line 584
    sget-object p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final initializeStates()V
    .registers 5

    .line 298
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 299
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_12

    .line 300
    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$2;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 310
    :cond_12
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_23
    return-void
.end method

.method public isAllowed()Z
    .registers 4

    .line 665
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "isAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->isSystemReady()Z

    move-result p0

    .line 668
    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSystemReady()Z
    .registers 4

    .line 380
    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_18

    const/4 p0, 0x1

    return p0

    .line 384
    :cond_18
    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 384
    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    if-nez v2, :cond_1d

    .line 373
    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v2
.end method

.method public launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 13

    const-string/jumbo p2, "launchApplication"

    .line 513
    invoke-virtual {p0, p2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_10

    .line 517
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p4}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p2

    .line 520
    :goto_11
    sget-object p4, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launchApplication  - intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-virtual {v0, p3}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->get(Landroid/content/Intent;)Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    move-result-object v5

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launchApplication  - interceptedActivityInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget p4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-eqz v5, :cond_54

    .line 529
    invoke-virtual {v5}, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->getCallerInfo()Lcom/android/server/wm/RemoteAppController$CallerInfo;

    move-result-object p2

    .line 530
    invoke-virtual {v5}, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->getUserId()I

    move-result p4

    .line 532
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-virtual {v0, p3}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->remove(Landroid/content/Intent;)V

    :cond_54
    move-object v6, p2

    move v7, p4

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    .line 535
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivity(ILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/remoteappmode/InterceptedActivityInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;I)V

    return-void
.end method

.method public moveDisplayToTop(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "moveDisplayToTop"

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_9
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/remoteappmode/RemoteAppModeService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService$3;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_10

    .line 293
    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 361
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .registers 6

    .line 673
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecuredAppLaunched, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_23
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/SecureAppNotifier;->notifySecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public final onSecuredAppRemoved(ILjava/lang/String;)V
    .registers 6

    .line 679
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecureAppRemoved, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_23
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/SecureAppNotifier;->notifySecuredAppRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public final onUserChanged(I)V
    .registers 5

    .line 349
    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_5

    return-void

    .line 352
    :cond_5
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->setCurrentUserId(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->initializeStates()V

    return-void
.end method

.method public final onUserStarting(I)V
    .registers 4

    .line 318
    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 4

    .line 340
    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopping(I)V
    .registers 4

    .line 336
    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_27

    sget-object p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentUser="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public final onUserSwitching(I)V
    .registers 5

    .line 330
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(I)V
    .registers 5

    .line 322
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    .line 324
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_33

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserChanged(I)V

    :cond_33
    return-void
.end method

.method public registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "registerRemoteAppModeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "registerRotationChangeListener"

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 744
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "registerSecureAppChangedListener"

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    if-nez v0, :cond_17

    .line 726
    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLocalService:Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;

    .line 727
    const-class v1, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 730
    :cond_17
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/SecureAppNotifier;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "Permission required to register StartActivityInterceptListener"

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    if-nez v1, :cond_1c

    .line 759
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 760
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 762
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/wm/RemoteAppControllerCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerRemoteAppControllerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V

    const/4 v1, 0x1

    .line 764
    iput-boolean v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    .line 766
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 768
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_24
    move-exception p0

    .line 766
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z
    .registers 8

    const-string/jumbo v0, "registerTaskChangeListener"

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 693
    :try_start_b
    iget v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_11

    const/4 v2, 0x1

    .line 697
    :cond_11
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw p0
.end method

.method public final releaseAllVirtualDisplays()V
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    .line 949
    invoke-virtual {v2}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    goto :goto_d

    .line 952
    :cond_21
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    .line 955
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final releaseSecureAppNotifier()V
    .registers 1

    .line 959
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    if-eqz p0, :cond_7

    .line 960
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/SecureAppNotifier;->releaseAllListeners()V

    :cond_7
    return-void
.end method

.method public final releaseTaskChangeNotifier()V
    .registers 1

    .line 965
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_7

    .line 966
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->releaseAllListeners()V

    :cond_7
    return-void
.end method

.method public releaseVirtualDisplay(I)V
    .registers 5

    const-string/jumbo v0, "releaseVirtualDisplay"

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_9
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 445
    iget v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_37

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->closeAllTask(I)V

    .line 450
    :cond_37
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 452
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    .line 456
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public resizeVirtualDisplay(IIIILandroid/view/Surface;)V
    .registers 9

    const-string/jumbo v0, "resizeVirtualDisplay"

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_9
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 478
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 479
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 481
    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final saveCallerInfo(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V
    .registers 6

    if-nez p2, :cond_6

    .line 167
    iget v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-eq p4, v0, :cond_2f

    .line 168
    :cond_6
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    new-instance v0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/remoteappmode/InterceptedActivityInfo;-><init>(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->put(Landroid/content/Intent;Lcom/android/server/remoteappmode/InterceptedActivityInfo;)V

    .line 169
    sget-object p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "saveCallerInfo - mInterceptedActivityRepo.put cInfo:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", intent:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z
    .registers 8

    const-string/jumbo v0, "sendNotificationAction"

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 886
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_50

    .line 887
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-gt v0, p2, :cond_1f

    goto :goto_50

    .line 891
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x1

    if-nez p3, :cond_2b

    .line 895
    :try_start_26
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 898
    :cond_2b
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    .line 900
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object p1, p1, p2

    iget-object p1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 902
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_3d} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_3d} :catch_44
    .catchall {:try_start_26 .. :try_end_3d} :catchall_42

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    goto :goto_4b

    :catchall_42
    move-exception p0

    goto :goto_4c

    :catch_44
    move-exception p0

    .line 906
    :try_start_45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4b
    return v1

    :goto_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    throw p0

    :cond_50
    :goto_50
    return v1
.end method

.method public sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "sendNotificationContent"

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 861
    :try_start_c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 862
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    .line 864
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_23

    .line 865
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_29

    .line 866
    :cond_23
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 868
    :goto_29
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v3, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_2e} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_2e} :catch_34
    .catchall {:try_start_c .. :try_end_2e} :catchall_32

    .line 873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    :catchall_32
    move-exception p0

    goto :goto_3d

    :catch_34
    move-exception p0

    .line 871
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 873
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v3

    :goto_3c
    return v2

    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 874
    throw p0
.end method

.method public sendPendingIntent(Landroid/app/PendingIntent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "sendPendingIntent"

    .line 836
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 838
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    .line 839
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    .line 842
    :try_start_f
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_15
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 844
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 5

    .line 344
    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1b
    iput p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    return-void
.end method

.method public setLTWProtocolVersion(I)V
    .registers 2

    .line 636
    iput p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLTWProtocolVersion:I

    return-void
.end method

.method public final startActivity(ILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/remoteappmode/InterceptedActivityInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;I)V
    .registers 9

    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p3, :cond_a

    .line 542
    :try_start_6
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    .line 544
    :cond_a
    invoke-virtual {p3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    if-eqz p4, :cond_29

    if-eqz p5, :cond_21

    .line 548
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 551
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 550
    invoke-virtual {p0, p2, p5, p6, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startRemoteActivityAsCaller(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;ILandroid/os/Bundle;)I

    goto :goto_30

    .line 553
    :cond_21
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p6}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto :goto_30

    .line 556
    :cond_29
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p6}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_36
    .catchall {:try_start_6 .. :try_end_30} :catchall_34

    .line 562
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_55

    :catchall_34
    move-exception p0

    goto :goto_56

    :catch_36
    move-exception p0

    .line 559
    :try_start_37
    sget-object p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception  = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_34

    goto :goto_30

    :goto_55
    return-void

    .line 562
    :goto_56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 7

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->hasExtraProfile(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-wide/16 v0, -0x1

    const-string/jumbo p3, "profile"

    .line 569
    invoke-virtual {p1, p3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 570
    iget-object p3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    .line 571
    invoke-virtual {p3, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p3

    .line 573
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2d

    .line 575
    :cond_24
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_2d
    return-void
.end method

.method public startRFCommService()V
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string v2, "Permission Denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 645
    :try_start_d
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->bindService(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    throw p0
.end method

.method public stopRFCommService()V
    .registers 4

    .line 653
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string v2, "Permission Denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 657
    :try_start_d
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRFCommServiceLauncher:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->unbindService(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw p0
.end method

.method public transferTaskWithoutIntercept(IILandroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "transferTaskWithoutIntercept"

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->getTaskInfo(Landroid/content/Context;I)Landroid/app/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 598
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_11
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_44

    const/4 p1, 0x0

    if-eqz p3, :cond_23

    .line 604
    new-instance p1, Landroid/app/ActivityOptions;

    invoke-direct {p1, p3}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 606
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p1, :cond_2d

    .line 609
    :try_start_29
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 611
    :cond_2d
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 612
    iget-object p2, v0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iget p3, v0, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/remoteappmode/RemoteAppModeService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_3f

    .line 614
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_47

    :catchall_3f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    throw p0

    :catchall_44
    move-exception p0

    .line 600
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method public unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_LINK_TO_WINDOWS_REMOTE_APP_MODE"

    const-string/jumbo v2, "unregisterRemoteAppModeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppModeNotifier:Lcom/android/server/remoteappmode/RemoteAppModeNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    move-result p0

    return p0
.end method

.method public unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "unregisterRotationChangeListener"

    .line 749
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 751
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRotationChangeNotifier:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    move-result p0

    return p0
.end method

.method public unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z
    .registers 3

    const-string/jumbo v0, "unregisterSecureAppChangedListener"

    .line 735
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 737
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/SecureAppNotifier;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    move-result p0

    return p0
.end method

.method public unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z
    .registers 5

    const-string v0, "Permission required to unregister StartActivityInterceptListener"

    .line 773
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_8
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 777
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 779
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mRemoteAppControllerCallbacks:Lcom/android/server/wm/RemoteAppControllerCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->unregisterRemoteAppControllerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V

    const/4 v1, 0x0

    .line 781
    iput-boolean v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsStartActivityListenerRegistered:Z

    .line 783
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 784
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2a

    .line 786
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-virtual {v0}, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->clear()V

    .line 788
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    move-result p0

    return p0

    :catchall_2a
    move-exception p0

    .line 784
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z
    .registers 4

    const-string/jumbo v0, "unregisterTaskChangeListener"

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkPermissionAndAAoWFeature(Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 713
    :try_start_a
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTaskChangeNotifier:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 715
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    throw p0
.end method
