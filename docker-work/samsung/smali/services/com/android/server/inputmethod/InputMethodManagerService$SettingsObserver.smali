.class public Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public mLastEnabled:Ljava/lang/String;

.field public mRegistered:Z

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 1423
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1424
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 1416
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const-string p1, ""

    .line 1417
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    const-string p1, "InputMethodManagerService"

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    .line 1472
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "accessibility_soft_keyboard_mode"

    .line 1474
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 1476
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1479
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 1480
    :try_start_2e
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1481
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    .line 1483
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_dd

    .line 1484
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHideRequestWindowMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 1485
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p0

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 1484
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;I)V

    goto/16 :goto_dd

    .line 1489
    :cond_62
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_b6

    .line 1490
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1491
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_soft_keyboard_mode"

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 1490
    invoke-static {p1, p2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1493
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    and-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_82

    move p1, v0

    goto :goto_83

    :cond_82
    move p1, v3

    :goto_83
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    .line 1496
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a4

    .line 1497
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p1

    .line 1498
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v3, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 1500
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fputmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    goto :goto_dd

    .line 1501
    :cond_a4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 1502
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_dd

    .line 1507
    :cond_b6
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 1508
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mbuildKeyboardTypeMouseList(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;)V

    goto :goto_dd

    .line 1512
    :cond_c4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p1

    .line 1513
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d7

    .line 1514
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    goto :goto_d8

    :cond_d7
    move v0, v3

    .line 1517
    :goto_d8
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1519
    :cond_dd
    :goto_dd
    monitor-exit v2

    return-void

    :catchall_df
    move-exception p0

    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_2e .. :try_end_e1} :catchall_df

    throw p0
.end method

.method public registerContentObserverLocked(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_9

    return-void

    .line 1432
    :cond_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1433
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 1434
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1435
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 1437
    :cond_23
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2d

    const-string v1, ""

    .line 1438
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 1439
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    :cond_2d
    const-string v1, "default_input_method"

    .line 1441
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "enabled_input_methods"

    .line 1443
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "selected_input_method_subtype"

    .line 1445
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 1447
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accessibility_soft_keyboard_mode"

    .line 1449
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1455
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$sfgetDEX_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "touch_keyboard"

    .line 1456
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmDeXDualViewChangeObserver(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    move-result-object v4

    .line 1455
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 1459
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 1463
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
