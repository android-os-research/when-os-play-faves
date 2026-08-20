.class public Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
.field public final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mIntent:Landroid/content/Intent;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mUserStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S_t9lIIKpegfX2zSt7xbJPTnBMo(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->initializeService()V

    return-void
.end method

.method public static synthetic $r8$lambda$cFIj82OZ_DSkyRWMJM0lIoCyW7c(Lcom/android/server/accessibility/AccessibilityServiceConnection;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyTouchStateInternal(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$mT2TA1c_btSryrr7Xp2N_-QHZYs(Lcom/android/server/accessibility/AccessibilityServiceConnection;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMotionEventInternal(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V
    .registers 29

    move-object v0, p0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 86
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 89
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    move-object/from16 v2, p6

    .line 91
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x1040106

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, p14

    .line 94
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_46
    const-string v4, "android.intent.extra.client_intent"

    .line 97
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x4000000

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_61

    .line 101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw v0
.end method


# virtual methods
.method public bindLocked()V
    .registers 9

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v0, :cond_b

    return-void

    .line 108
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const v3, 0x2101001

    .line 114
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v4

    if-eqz v4, :cond_1b

    const v3, 0x2501001

    .line 117
    :cond_1b
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 119
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_56

    .line 122
    :cond_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 125
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 124
    invoke-virtual {v1, v2, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    return-void

    :catchall_56
    move-exception p0

    .line 122
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0
.end method

.method public binderDied()V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 378
    monitor-exit v0

    return-void

    .line 380
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 383
    :cond_16
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 384
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-eqz v1, :cond_28

    .line 386
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 388
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resetLocked()V

    .line 389
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetAllIfNeeded(I)V

    .line 390
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 391
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public disableSelf()V
    .registers 8

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "disableSelf"

    const-string v1, ""

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v1, :cond_1c

    .line 154
    monitor-exit v0

    return-void

    .line 155
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_4a

    .line 158
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    .line 160
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v6

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 158
    invoke-interface {v4, v5, v6, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_43

    .line 162
    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    goto :goto_48

    :catchall_43
    move-exception p0

    .line 162
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw p0

    .line 166
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 8

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 458
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 459
    invoke-interface {v1, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v1

    .line 460
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wmTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "isTouchOrFaketouchDevice"

    const-string v3, ""

    .line 461
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz v1, :cond_37

    .line 463
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 464
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isTouchOrFaketouchDevice()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 466
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 465
    invoke-virtual {v1, p2, p0, p1, p3}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;II)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_76

    goto :goto_74

    .line 469
    :cond_37
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result p2

    if-eqz p2, :cond_54

    const-string/jumbo p2, "onPerformGestureResult"

    .line 470
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", false"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_54
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5a} :catch_5b
    .catchall {:try_start_37 .. :try_end_5a} :catchall_76

    goto :goto_74

    :catch_5b
    move-exception p1

    :try_start_5c
    const-string p2, "AccessibilityServiceConnection"

    .line 474
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending motion event injection failure to "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_76

    throw p0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object p0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 3

    .line 294
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "getSoftKeyboardShowMode"

    const-string v1, ""

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-eqz p0, :cond_1d

    .line 298
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardShowModeLocked()I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public hasRightsToCurrentUserLocked()Z
    .registers 4

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_10

    goto :goto_3a

    .line 266
    :cond_10
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 267
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v2

    if-ne v0, v2, :cond_23

    return v1

    .line 270
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public final initializeService()V
    .registers 7

    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v1, :cond_f

    .line 209
    monitor-exit v0

    return-void

    .line 210
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v2

    .line 211
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v3

    .line 212
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 213
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v2, 0x0

    goto :goto_3b

    .line 214
    :cond_2b
    :goto_2b
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iput-boolean v5, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 217
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    :goto_3b
    if-eqz v2, :cond_50

    .line 223
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 224
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_b0

    if-nez v2, :cond_57

    .line 229
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    return-void

    .line 233
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string/jumbo v0, "init"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 235
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_87
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v2, p0, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_94} :catch_95

    goto :goto_af

    :catch_95
    move-exception v0

    const-string v1, "AccessibilityServiceConnection"

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while setting connection for service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    :goto_af
    return-void

    :catchall_b0
    move-exception p0

    .line 227
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 4

    .line 359
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "isAccessibilityButtonAvailable"

    const-string v1, ""

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 364
    monitor-exit v0

    return v2

    .line 366
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-eqz v1, :cond_2b

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    :catchall_2d
    move-exception p0

    .line 368
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 3

    .line 396
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 400
    :cond_6
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 409
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public notifyMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 511
    new-instance v0, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 514
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyMotionEventInternal(Landroid/view/MotionEvent;)V
    .registers 5

    .line 529
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 532
    :try_start_6
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    invoke-interface {v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ".onMotionEvent "

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_17
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_34

    :catch_1b
    move-exception p1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending motion event to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityServiceConnection"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public notifyTouchState(II)V
    .registers 4

    .line 518
    new-instance v0, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda0;-><init>()V

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 518
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 521
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyTouchStateInternal(II)V
    .registers 6

    .line 544
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 547
    :try_start_6
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    invoke-interface {v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ".onTouchStateChanged "

    .line 549
    invoke-static {p2}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_17
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onTouchStateChanged(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_34

    :catch_1b
    move-exception p1

    .line 553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error sending motion event to"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AccessibilityServiceConnection"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 4

    .line 436
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 442
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    if-eqz v1, :cond_24

    .line 445
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onFingerprintGesture"

    .line 446
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void

    :catchall_25
    move-exception p0

    .line 442
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 4

    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 421
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    if-eqz v1, :cond_24

    .line 424
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onFingerprintCapturingGesturesChanged"

    .line 426
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void

    :catchall_25
    move-exception p0

    .line 421
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 171
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 172
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1f

    if-eqz v0, :cond_d

    .line 174
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 176
    :cond_d
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_54

    .line 178
    :try_start_f
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_54

    goto :goto_1f

    :catch_13
    :try_start_13
    const-string p2, "AccessibilityServiceConnection"

    const-string v0, "Failed registering death link"

    .line 180
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 182
    monitor-exit p1

    return-void

    .line 185
    :cond_1f
    :goto_1f
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 186
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez p2, :cond_31

    .line 187
    monitor-exit p1

    return-void

    .line 188
    :cond_31
    invoke-virtual {p2, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 189
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 192
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 195
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p2, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 197
    :cond_52
    monitor-exit p1

    return-void

    :catchall_54
    move-exception p0

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 247
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 248
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-eqz p1, :cond_1b

    .line 250
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    :cond_1b
    return-void
.end method

.method public requestImeApis()Z
    .registers 1

    .line 525
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    return p0
.end method

.method public setFocusAppearance(II)V
    .registers 6

    .line 484
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v0, :cond_b

    return-void

    .line 489
    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 491
    monitor-exit v1

    return-void

    .line 494
    :cond_16
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 495
    monitor-exit v1

    return-void

    .line 498
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusStrokeWidthLocked()I

    move-result v2

    if-ne v2, p1, :cond_2e

    .line 499
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusColorLocked()I

    move-result v2

    if-ne v2, p2, :cond_2e

    .line 500
    monitor-exit v1

    return-void

    .line 504
    :cond_2e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setFocusAppearanceLocked(II)V

    .line 506
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 507
    monitor-exit v1

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "switchToInputMethod"

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_2a

    .line 330
    monitor-exit v0

    return v2

    .line 332
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_5e

    .line 334
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 336
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 341
    :try_start_37
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_59

    .line 342
    :try_start_3a
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v6, p1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)I

    move-result p0

    .line 343
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_56

    if-eqz p0, :cond_47

    .line 352
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 347
    :cond_47
    :try_start_47
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInputMethodEnabled(Ljava/lang/String;ZI)Z

    move-result p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_59

    if-eqz p0, :cond_52

    const/4 p0, 0x0

    .line 352
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_56
    move-exception p0

    .line 343
    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    .line 352
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw p0

    :catchall_5e
    move-exception p0

    .line 332
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 5

    .line 279
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "setSoftKeyboardShowMode"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 284
    monitor-exit v0

    return v2

    .line 286
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v1, :cond_36

    .line 287
    monitor-exit v0

    return v2

    .line 288
    :cond_36
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3e
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .registers 5

    .line 303
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "switchToInputMethod"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x0

    .line 308
    monitor-exit v0

    return p0

    .line 310
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_44

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    :try_start_33
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result p0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3f

    .line 317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    throw p0

    :catchall_44
    move-exception p0

    .line 310
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public unbindLocked()V
    .registers 5

    .line 130
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v0, :cond_1b

    return-void

    .line 136
    :cond_1b
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetAllIfNeeded(I)V

    .line 138
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resetLocked()V

    return-void
.end method
