.class public Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 7546
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 7549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 7550
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    const-string/jumbo p2, "keyguard"

    .line 7551
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_30

    .line 7552
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 7553
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 7554
    :try_start_20
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 7556
    monitor-exit p1

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return-void
.end method
