.class public Lcom/android/server/desktopmode/TouchpadManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/TouchpadManager$StateListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager$StateListener;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    return-void
.end method


# virtual methods
.method public onDualModeStartLoadingScreen(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 235
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$misNavBarGestureEnabled(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/desktopmode/IStateManager;->setNavBarGestureEnabled(Z)V

    .line 236
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "navigation_mode"

    .line 237
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmNavBarModeObserver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/database/ContentObserver;

    move-result-object v3

    const/4 v4, -0x2

    .line 236
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_95

    .line 240
    :cond_2f
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V

    .line 241
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSPenSettingChangedListener(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 242
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmNavBarModeObserver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz p1, :cond_95

    .line 244
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSPenDetachedReceiver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmPointerEventListener(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 246
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmPointerEventListener(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/TouchpadManager;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 250
    :cond_95
    :goto_95
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "touchpad_enabled"

    invoke-static {p1, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 252
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadEnabled(Z)V

    .line 253
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmTouchpadRequested(Lcom/android/server/desktopmode/TouchpadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz p1, :cond_c5

    .line 257
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fputmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    .line 258
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateSPenState(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_c5
    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 9

    if-eqz p1, :cond_8e

    .line 215
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSPenSettingChangedListener(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 218
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    if-eqz v0, :cond_6c

    .line 219
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmSPenDetachedReceiver(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.pen.INSERT"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmPointerEventListener(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 222
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/TouchpadManager;I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmPointerEventListener(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/TouchpadManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 225
    :cond_6c
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 226
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isMouseConnected()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 227
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040438

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_8e
    return-void
.end method
