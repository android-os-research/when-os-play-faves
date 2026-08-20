.class public final Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;
.super Landroid/os/Handler;
.source "DexActivityStartInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UiHandler"
.end annotation


# static fields
.field public static final SHOW_RESTART_APP_DIALOG_UI_MSG:I


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;)V
    .registers 4

    .line 384
    iput-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    .line 385
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_79

    :cond_5
    const-string v0, "DexActivityStartInterceptor"

    const-string v1, "Show dex restart app dialog"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/DexRestartAppInfo;

    .line 394
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 396
    iget-object p1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object p1, p1, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {p1}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x2

    if-ne v7, v0, :cond_49

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmDexDisplay(Lcom/android/server/wm/DexActivityStartInterceptor;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v1, v1, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v1}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmDexDisplay(Lcom/android/server/wm/DexActivityStartInterceptor;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    goto :goto_53

    .line 401
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    :goto_53
    move-object v2, v0

    .line 403
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 404
    new-instance p1, Lcom/android/server/wm/DexRestartAppDialog;

    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object v0, v0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {v0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmDexController(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/DexController;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController$UiHandler;->this$1:Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    iget-object p0, p0, Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;->this$0:Lcom/android/server/wm/DexActivityStartInterceptor;

    invoke-static {p0}, Lcom/android/server/wm/DexActivityStartInterceptor;->-$$Nest$fgetmDexRestartAppDialogController(Lcom/android/server/wm/DexActivityStartInterceptor;)Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DexRestartAppDialog;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexActivityStartInterceptor$DexRestartAppDialogController;Lcom/android/server/wm/DexRestartAppInfo;I)V

    .line 407
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_79
    return-void

    :catchall_7a
    move-exception p0

    .line 403
    :try_start_7b
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
