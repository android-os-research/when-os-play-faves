.class public Lcom/android/server/desktopmode/CoverStateManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v2

    if-eq v1, v2, :cond_29

    .line 99
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fputmDesktopDockConnected(Lcom/android/server/desktopmode/CoverStateManager;Z)V

    .line 100
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 102
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onDualModeStartLoadingScreen(Z)V
    .registers 2

    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 2

    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 91
    :try_start_7
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$2;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$mupdateCoverSupportStateLocked(Lcom/android/server/desktopmode/CoverStateManager;)Z

    .line 92
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
