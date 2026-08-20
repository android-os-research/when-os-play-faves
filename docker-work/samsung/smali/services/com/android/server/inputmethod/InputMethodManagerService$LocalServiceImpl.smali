.class public final Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 6371
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 6394
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6395
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetEnabledInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 6396
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 6387
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6388
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 6389
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public hideCurrentInputMethod(I)V
    .registers 4

    .line 6381
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6382
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .registers 3

    .line 6558
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6559
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .registers 6

    .line 6403
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmAccessibilityManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 6405
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6406
    :try_start_d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monCreateInlineSuggestionsRequestLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V

    .line 6408
    monitor-exit v1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onImeParentChanged()V
    .registers 2

    .line 6481
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6485
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu()V

    .line 6486
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V
    .registers 8

    .line 6506
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 6508
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V

    .line 6509
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6512
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p2

    .line 6515
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v3, 0xbc3

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 6517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6515
    invoke-static {p0, v3, v4, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mobtainMessageOOO(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 6519
    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 2

    .line 6451
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmInputMethodListListeners(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeImeSurface()V
    .registers 3

    .line 6491
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v0, :cond_c

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "removeImeSurface called."

    .line 6492
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6494
    :cond_c
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .registers 4

    .line 6470
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6471
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v1, p1, :cond_d

    const/4 p1, 0x1

    .line 6474
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmCurPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    .line 6476
    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .registers 15

    .line 6420
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_22

    .line 6422
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 6423
    monitor-exit v0

    return v3

    .line 6425
    :cond_1b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    .line 6426
    monitor-exit v0

    return v2

    .line 6428
    :cond_22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mqueryMethodMapForUser(Lcom/android/server/inputmethod/InputMethodManagerService;I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 6429
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6430
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v1

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 6432
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    .line 6433
    monitor-exit v0

    return v3

    :cond_49
    if-eqz p2, :cond_5d

    .line 6436
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    .line 6437
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6436
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    .line 6438
    invoke-virtual {v10, p1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_69

    .line 6441
    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6443
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object p2

    .line 6441
    invoke-virtual {v10, p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 6445
    :cond_69
    :goto_69
    monitor-exit v0

    return v2

    :catchall_6b
    move-exception p0

    .line 6446
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public setInteractive(Z)V
    .registers 4

    .line 6376
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xbd6

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .registers 4

    .line 6413
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6414
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 6415
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .registers 5

    .line 6459
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6460
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurTokenDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v1

    if-ne p2, v1, :cond_24

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_14

    goto :goto_24

    .line 6463
    :cond_14
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;

    move-result-object p2

    .line 6464
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_27

    .line 6465
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManagerInternal;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    .line 6461
    :try_start_25
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    .line 6464
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public unbindAccessibilityFromCurrentClient(I)V
    .registers 11

    .line 6524
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v5, 0x7

    .line 6534
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    iget-object v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v3, 0xbb9

    .line 6535
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetSequenceNumberLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 6536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 6534
    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mobtainMessageIIOO(Lcom/android/server/inputmethod/InputMethodManagerService;IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 6540
    :cond_2f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mgetCurMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 6541
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_52

    .line 6543
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 6546
    :cond_52
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v1, :cond_6a

    .line 6549
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 6550
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6553
    :cond_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public updateImeWindowStatus(Z)V
    .registers 4

    .line 6499
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x42e

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 6500
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
