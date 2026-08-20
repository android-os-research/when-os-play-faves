.class public Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiAutomationService"
.end annotation


# instance fields
.field public final mMainHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method public static synthetic $r8$lambda$speu5EgWpE2IKrPse2Po2-pN__Q(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->lambda$connectServiceUnknownThread$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 27

    move-object v13, p0

    move-object v0, p1

    .line 251
    iput-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 252
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$sfgetCOMPONENT_NAME()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    move-object/from16 v0, p5

    .line 255
    iput-object v0, v13, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$connectServiceUnknownThread$0()V
    .registers 9

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_65

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    const/4 v3, 0x0

    .line 266
    iput-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    goto :goto_15

    .line 268
    :cond_c
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 269
    invoke-interface {v3, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_62

    if-eqz v1, :cond_72

    .line 275
    :try_start_18
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-wide/16 v3, 0x2

    invoke-interface {v0, v3, v4}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    const-string v5, "UiAutomationService.connectServiceUnknownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceConnection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";connectionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "windowToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 281
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-interface {v0, v5, v3, v4, v6}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 283
    :cond_54
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 283
    invoke-interface {v1, p0, v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_61} :catch_65

    goto :goto_72

    :catchall_62
    move-exception v1

    .line 271
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw v1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    const-string v1, "UiAutomationManager"

    const-string v2, "Error initialized connection"

    .line 287
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {p0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {p0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    return-void
.end method

.method public connectServiceUnknownThread()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disableSelf()V
    .registers 1

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 311
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "UiAutomationManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 312
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 313
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ui Automation[eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 314
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 313
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p0, "]"

    .line 316
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 317
    monitor-exit p1

    return-void

    :catchall_45
    move-exception p0

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasRightsToCurrentUserLocked()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onFingerprintGesture(I)V
    .registers 2

    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 2

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .registers 3

    const/4 p0, 0x2

    return p0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .registers 3

    return-void
.end method
