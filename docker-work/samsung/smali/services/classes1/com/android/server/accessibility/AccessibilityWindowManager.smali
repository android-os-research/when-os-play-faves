.class public Lcom/android/server/accessibility/AccessibilityWindowManager;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilityWindowManager"

.field public static sNextWindowId:I


# instance fields
.field public final mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedDisplayId:I

.field public mAccessibilityFocusedWindowId:I

.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mActiveWindowId:I

.field public final mDisplayWindowsObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHostEmbeddedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public mTopFocusedDisplayId:I

.field public mTopFocusedWindowId:I

.field public mTopFocusedWindowToken:Landroid/os/IBinder;

.field public mTouchInteractionInProgress:Z

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IYGwnwkTh1g6Cwf2SSjlXXZvkmE(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusMainThread(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowIdMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccessibilityInteractionConnectionLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 11

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 94
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 95
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    const-wide/32 v1, 0x7fffffff

    .line 96
    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 101
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 939
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 940
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 941
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 942
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 943
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 944
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 945
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method


# virtual methods
.method public accessibilityFocusOnlyInActiveWindowLocked()Z
    .registers 1

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p5

    .line 1044
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "getDisplayIdForWindow"

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_24
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v9

    .line 1049
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1053
    :try_start_2d
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1054
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v11

    .line 1055
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2

    invoke-static {v11, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1058
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1059
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v5, p4

    .line 1058
    invoke-virtual {v2, v5, v3, v11, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v5

    .line 1062
    sget v12, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    add-int/lit8 v2, v12, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    .line 1066
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1067
    new-instance v11, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v7, -0x1

    move-object v1, v11

    move-object v2, p0

    move v3, v12

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1069
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1070
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1071
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8e

    .line 1077
    :cond_72
    new-instance v13, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-object v1, v13

    move-object v2, p0

    move v3, v12

    move-object/from16 v4, p3

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1079
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1080
    invoke-virtual {p0, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    invoke-virtual {p0, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1088
    :goto_8e
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v1

    move-object/from16 v2, p2

    .line 1091
    invoke-virtual {p0, v2, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->registerIdLocked(Landroid/os/IBinder;I)V

    .line 1092
    monitor-exit v10
    :try_end_98
    .catchall {:try_start_2d .. :try_end_98} :catchall_e7

    if-eqz v1, :cond_bb

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "computeWindowsForAccessibility"

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_b6
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 1099
    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v1

    if-eqz v1, :cond_e1

    const-string/jumbo v1, "setAccessibilityIdToSurfaceMetadata"

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";windowId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_e1
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v8, v12}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    return v12

    :catchall_e7
    move-exception v0

    .line 1092
    :try_start_e8
    monitor-exit v10
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0
.end method

.method public associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 1305
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 1807
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearAccessibilityFocusLocked(I)V
    .registers 5

    .line 1742
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 1745
    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1742
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final clearAccessibilityFocusMainThread(II)V
    .registers 4

    .line 1750
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1753
    monitor-exit v0

    return-void

    .line 1755
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result p2

    if-eqz p2, :cond_18

    const-string/jumbo p2, "notifyOutsideTouch"

    .line 1757
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 1760
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void

    :catchall_20
    move-exception p0

    .line 1755
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 5

    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    .line 1351
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    if-eq v0, p1, :cond_e

    const/4 v1, 0x1

    .line 1355
    :cond_e
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z

    move-result p0

    return p0

    :cond_13
    return v1
.end method

.method public disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public disassociateLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 1816
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_25

    .line 1818
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1819
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1886
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1888
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_16

    .line 1890
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 1531
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findFocusedWindowId(I)I
    .registers 4

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "getFocusedWindowToken"

    const-string v1, ""

    .line 1705
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;

    move-result-object v0

    .line 1708
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1709
    :try_start_16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1c
    move-exception p0

    .line 1710
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public findWindowIdLocked(ILandroid/os/IBinder;)I
    .registers 4

    .line 1284
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 1286
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    .line 1288
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_28

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 2

    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveWindowId(I)I
    .registers 4

    .line 1479
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 1481
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1483
    :cond_f
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p0
.end method

.method public getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 5

    .line 1165
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-nez v0, :cond_1b

    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    :cond_1b
    if-eqz v0, :cond_24

    .line 1169
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p0

    if-eqz p0, :cond_24

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayIdByUserIdAndWindowIdLocked(II)I
    .registers 4

    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1665
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "token="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getDisplayIdForWindow"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_21
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getDisplayListLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_26

    .line 1680
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v3, :cond_23

    .line 1682
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    return-object v0
.end method

.method public final getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .registers 6

    .line 1769
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 1771
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_26

    .line 1773
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1774
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->-$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    return-object p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusedWindowId(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1564
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1566
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 1879
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public final getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 1726
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1727
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    return-object p0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 1579
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1581
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v3, :cond_1b

    .line 1583
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public getTokenLocked(I)Landroid/os/IBinder;
    .registers 2

    .line 1855
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public getWindowIdLocked(Landroid/os/IBinder;)I
    .registers 3

    .line 1865
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return p1

    .line 1869
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public getWindowListLocked(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 1020
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p0, :cond_f

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWindowListLocked()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .registers 4

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getWindowOwnerUserId"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_1e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;
    .registers 5

    .line 1255
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_1b

    .line 1256
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/IBinder;

    :cond_1b
    return-object v0
.end method

.method public final getWindowTokensForUserLocked(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1733
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 1735
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1736
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public isTrackingWindowsLocked()Z
    .registers 1

    .line 990
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isTrackingWindowsLocked(I)Z
    .registers 2

    .line 1005
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz p0, :cond_f

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidUserForInteractionConnectionsLocked(I)Z
    .registers 2

    .line 1714
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isValidUserForWindowTokensLocked(I)Z
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final logTraceIntConn(Ljava/lang/String;)V
    .registers 4

    .line 1796
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityWindowManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    return-void
.end method

.method public final logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1786
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManagerInternal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x200

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public notifyOutsideTouch(II)V
    .registers 8

    .line 1626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1629
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    .line 1631
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object p2

    move v2, v3

    .line 1632
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2e

    .line 1633
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1636
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_54

    .line 1637
    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_53

    .line 1638
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz p1, :cond_50

    .line 1640
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceIntConnEnabled()Z

    move-result p2

    if-eqz p2, :cond_49

    const-string/jumbo p2, "notifyOutsideTouch"

    .line 1641
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceIntConn(Ljava/lang/String;)V

    .line 1645
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 1636
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V
    .registers 6

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    if-ltz p1, :cond_f

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v0, p1, :cond_f

    .line 1233
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    :cond_f
    if-eqz p2, :cond_39

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";windowId=AccessibilityWindowInfo.UNDEFINED_WINDOW_ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "setAccessibilityIdToSurfaceMetadata"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_34
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 1243
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->unregisterIdLocked(I)V

    return-void
.end method

.method public onTouchInteractionEnd()V
    .registers 4

    .line 1453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1454
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1463
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1464
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1465
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v1, v2, :cond_1e

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_1e

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->accessibilityFocusOnlyInActiveWindowLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1468
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1470
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 1443
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1444
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1445
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public registerIdLocked(Landroid/os/IBinder;I)V
    .registers 3

    .line 1831
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 7

    .line 1113
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1118
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1117
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 1119
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1120
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    if-ltz v1, :cond_1f

    .line 1123
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1129
    monitor-exit v0

    return-void

    .line 1131
    :cond_1f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_44

    .line 1133
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1136
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    .line 1137
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 1135
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v3

    if-ltz v3, :cond_41

    .line 1139
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1146
    monitor-exit v0

    return-void

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1149
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;)I"
        }
    .end annotation

    .line 1181
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_24

    .line 1183
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_21

    .line 1184
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    .line 1185
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1186
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1188
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->remove(I)V

    return p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method public final removeAccessibilityInteractionConnectionLocked(II)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 1204
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 1205
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1206
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3d

    .line 1208
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1209
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1210
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1212
    :goto_2f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1213
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3c
    move-object p2, v0

    .line 1216
    :goto_3d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method public resolveParentWindowIdLocked(I)I
    .registers 3

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return p1

    .line 1328
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 1329
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    move p1, p0

    :cond_13
    return p1
.end method

.method public final resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p1

    .line 1338
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final setAccessibilityFocusedWindowLocked(I)V
    .registers 5

    .line 1505
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_2a

    .line 1506
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x80

    .line 1507
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1506
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1511
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1513
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_2a

    .line 1515
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_27

    .line 1517
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public final setActiveWindowLocked(I)V
    .registers 5

    .line 1487
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v0, p1, :cond_2a

    .line 1488
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x20

    .line 1489
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1488
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1492
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1494
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_2a

    .line 1496
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v2, :cond_27

    .line 1498
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setActiveWindowLocked(I)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz v1, :cond_d

    .line 1599
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    const/4 v1, 0x0

    .line 1600
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    :cond_d
    if-eqz p1, :cond_22

    .line 1603
    new-instance v8, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v3, -0x3

    const-string v5, "foo.bar.baz"

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1606
    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1607
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1609
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public startTrackingWindows(I)V
    .registers 5

    .line 954
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-nez v1, :cond_12

    .line 957
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 959
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 960
    monitor-exit v0

    return-void

    .line 962
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->startTrackingWindowsLocked()V

    .line 963
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 964
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public stopTrackingWindows(I)V
    .registers 4

    .line 974
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    if-eqz v1, :cond_15

    .line 977
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->stopTrackingWindowsLocked()V

    .line 978
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 980
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

.method public final traceIntConnEnabled()Z
    .registers 3

    .line 1791
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public final traceWMEnabled()Z
    .registers 3

    .line 1782
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    return p0
.end method

.method public unregisterIdLocked(I)V
    .registers 3

    .line 1840
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_b

    return-void

    .line 1844
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 1845
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V
    .registers 9

    const/16 v0, 0x20

    if-eq p5, v0, :cond_5f

    const/16 p1, 0x80

    if-eq p5, p1, :cond_4c

    const p1, 0x8000

    if-eq p5, p1, :cond_38

    const/high16 p1, 0x10000

    if-eq p5, p1, :cond_12

    goto :goto_73

    .line 1421
    :cond_12
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1422
    :try_start_15
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long p3, v0, p3

    const-wide/32 p4, 0x7fffffff

    if-nez p3, :cond_20

    .line 1423
    iput-wide p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1427
    :cond_20
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long p3, v0, p4

    if-nez p3, :cond_33

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne p3, p2, :cond_33

    const/16 p2, 0x40

    if-eq p6, p2, :cond_33

    const/4 p2, -0x1

    .line 1430
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1431
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 1433
    :cond_33
    monitor-exit p1

    goto :goto_73

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw p0

    .line 1411
    :cond_38
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1412
    :try_start_3b
    iget p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq p5, p2, :cond_45

    .line 1413
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1414
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityFocusedWindowLocked(I)V

    .line 1416
    :cond_45
    iput-wide p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1417
    monitor-exit p1

    goto :goto_73

    :catchall_49
    move-exception p0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_49

    throw p0

    .line 1403
    :cond_4c
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1404
    :try_start_4f
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-eqz p1, :cond_5a

    iget p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq p1, p2, :cond_5a

    .line 1405
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1407
    :cond_5a
    monitor-exit p3

    goto :goto_73

    :catchall_5c
    move-exception p0

    monitor-exit p3
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5c

    throw p0

    .line 1390
    :cond_5f
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1391
    :try_start_62
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result p4

    if-nez p4, :cond_72

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    if-ne p2, p1, :cond_72

    .line 1394
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1397
    :cond_72
    monitor-exit p3

    :goto_73
    return-void

    :catchall_74
    move-exception p0

    monitor-exit p3
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_74

    throw p0
.end method
