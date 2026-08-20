.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImmsBroadcastReceiverForSystemUser"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1533
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_ADDED"

    .line 1537
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1538
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_83

    :cond_15
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 1541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1542
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onActionLocaleChanged()V

    goto :goto_82

    :cond_23
    const-string v0, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    .line 1543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 1550
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/InputMethodMenuController;->setImeSwitchButtonVisible(Z)V

    .line 1552
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1557
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_82

    :cond_44
    const-string v0, "com.samsung.systemui.statusbar.ANIMATING"

    .line 1559
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "InputMethodManagerService"

    if-eqz p1, :cond_6e

    .line 1560
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p1

    if-eqz p1, :cond_82

    const-string p1, "Status-bar Animating : Hide Keyboard"

    .line 1561
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/16 v0, 0x1c

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_82

    .line 1567
    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void

    .line 1539
    :cond_83
    :goto_83
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    return-void
.end method
