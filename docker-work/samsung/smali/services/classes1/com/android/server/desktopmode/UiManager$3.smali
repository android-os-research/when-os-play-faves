.class public Lcom/android/server/desktopmode/UiManager$3;
.super Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onClickButtonNegative()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_17

    .line 270
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public onClickButtonPositive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_17

    .line 263
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public onDismiss()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_17

    .line 284
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    :cond_17
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$mpostUnbindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)V

    return-void
.end method

.method public onShow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    if-eqz v0, :cond_17

    .line 277
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$3;->this$0:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$3;->val$callback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/UiManager$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method
