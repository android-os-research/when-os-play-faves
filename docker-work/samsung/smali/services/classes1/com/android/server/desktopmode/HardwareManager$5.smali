.class public Lcom/android/server/desktopmode/HardwareManager$5;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayDisconnectionRequested(I)V
    .registers 9

    .line 257
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 258
    :try_start_7
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 259
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_37

    .line 260
    iget-object v5, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/desktopmode/DisplayInfo;

    .line 261
    invoke-virtual {v5}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v6

    if-ne v6, p1, :cond_34

    .line 262
    invoke-virtual {v5}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 265
    :cond_37
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result p1

    move v2, v3

    :goto_3c
    if-ge v2, p1, :cond_4a

    .line 266
    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 268
    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public onDualModeStartLoadingScreen(Z)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetLowRefreshRate(Lcom/android/server/desktopmode/HardwareManager;Z)V

    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 248
    :try_start_7
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 250
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->logConnectedAccessoryInformationLocked(Lcom/android/server/desktopmode/State;)V

    .line 252
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public onStartLoadingScreen(Z)V
    .registers 3

    .line 230
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    .line 231
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method

.method public onStopLoadingScreen(Z)V
    .registers 3

    .line 236
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    .line 237
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmWindowManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method
