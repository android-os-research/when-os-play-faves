.class public Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$MFkD0oiu4zdfwyMpfwq9Qz3FGD8(Lcom/android/server/wm/LockTaskController$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController$1;->lambda$onDismissSucceeded$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .registers 3

    .line 1011
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDismissSucceeded$0(I)V
    .registers 5

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;)I

    move-result v0

    if-ne v0, p1, :cond_1c

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iget-object v1, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmToken(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "Lock-to-App"

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1024
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    const/16 p1, -0x2710

    invoke-static {p0, p1}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fputmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;I)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: dismiss cancelled"

    .line 1031
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: failed to dismiss keyguard"

    .line 1014
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissSucceeded()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->-$$Nest$fgetmHandler(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    new-instance v2, Lcom/android/server/wm/LockTaskController$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/LockTaskController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LockTaskController$1;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
