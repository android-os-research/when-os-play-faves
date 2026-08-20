.class public Lcom/android/server/accessibility/UiAutomationManager;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final LOG_TAG:Ljava/lang/String; = "UiAutomationManager"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field public mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field public mUiAutomationFlags:I

.field public mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

.field public mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field public mUiAutomationServiceOwner:Landroid/os/IBinder;

.field public final mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetCOMPONENT_NAME()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "UiAutomation"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/UiAutomationManager$1;-><init>(Lcom/android/server/accessibility/UiAutomationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 63
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final destroyUiAutomationService()V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 227
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 229
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    .line 230
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resetLocked()V

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 232
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    if-eqz v3, :cond_2b

    .line 233
    iget-object v4, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 235
    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 238
    :cond_2b
    iput v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 239
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 240
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 218
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz p0, :cond_b

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p0

    .line 218
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getRelevantEventTypes()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 199
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 201
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result p0

    return p0

    :catchall_f
    move-exception p0

    .line 199
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getRequestedEventMaskLocked()I
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_6
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    return p0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 209
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    return-object p0

    :catchall_f
    move-exception p0

    .line 209
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isTouchExplorationEnabledLocked()Z
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isUiAutomationRunningLocked()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 31

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p4

    .line 100
    iget-object v13, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 101
    :try_start_9
    sget-object v1, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v15, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 103
    iget-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_ba

    if-nez v1, :cond_98

    .line 110
    :try_start_12
    iget-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v12, 0x0

    invoke-interface {v0, v1, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_8c
    .catchall {:try_start_12 .. :try_end_18} :catchall_ba

    move/from16 v1, p13

    .line 117
    :try_start_1a
    iput v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    move-object/from16 v9, p8

    .line 118
    iput-object v9, v14, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v10, p9

    .line 119
    iput-object v10, v14, Lcom/android/server/accessibility/UiAutomationManager;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 123
    monitor-exit v13

    return-void

    .line 125
    :cond_2c
    new-instance v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v7, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_ba

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v15, v11

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v16, v13

    move-object/from16 v13, p12

    :try_start_4a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;-><init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    iput-object v15, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 128
    iput-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    move-object/from16 v0, p4

    move-object v1, v15

    .line 129
    iput-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-object/from16 v0, p2

    .line 130
    iput-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_bf

    .line 132
    :try_start_5a
    invoke-interface/range {p2 .. p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_64} :catch_70
    .catchall {:try_start_5a .. :try_end_64} :catchall_bf

    .line 140
    :try_start_64
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onAdded()V

    .line 142
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->connectServiceUnknownThread()V

    .line 143
    monitor-exit v16

    return-void

    :catch_70
    move-exception v0

    const-string v1, "UiAutomationManager"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed registering death link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 137
    monitor-exit v16

    return-void

    :catch_8c
    move-exception v0

    move-object/from16 v16, v13

    const-string v1, "UiAutomationManager"

    const-string v2, "Couldn\'t register for the death of a UiTestAutomationService!"

    .line 112
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    monitor-exit v16

    return-void

    :cond_98
    move-object/from16 v16, v13

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiAutomationService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "already registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_ba
    move-exception v0

    move-object/from16 v16, v13

    .line 143
    :goto_bd
    monitor-exit v16
    :try_end_be
    .catchall {:try_start_64 .. :try_end_be} :catchall_bf

    throw v0

    :catchall_bf
    move-exception v0

    goto :goto_bd
.end method

.method public sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz p0, :cond_7

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    return-void
.end method

.method public suppressingAccessibilityServicesLocked()Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_b
    iget p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/2addr p0, v1

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_22

    .line 152
    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 153
    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_22

    goto :goto_3e

    .line 154
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiAutomationService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not registered!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 158
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public useAccessibility()Z
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
