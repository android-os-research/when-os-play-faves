.class public Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 1081
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGlobalActionsDisabled()Z
    .registers 2

    .line 1085
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmDisplayUiState(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    .line 1092
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    invoke-interface {p1, p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    return-void
.end method

.method public showGlobalActions()V
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1099
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public showGlobalActions(I)V
    .registers 3

    .line 1107
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1109
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method
