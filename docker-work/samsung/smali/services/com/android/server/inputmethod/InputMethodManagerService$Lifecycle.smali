.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$S2g8mE9h-s7KVxo-otxpJc4aL20(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$onBootPhase$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1921
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1922
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 2

    const-string/jumbo v0, "statusbar"

    .line 1950
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1951
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_10

    .line 1947
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1927
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1928
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string/jumbo v1, "input_method"

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1935
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1936
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 1938
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1961
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/16 v0, 0x1388

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1962
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
