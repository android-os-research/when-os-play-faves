.class public Lcom/android/server/statusbar/StatusBarManagerService$2;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mNotificationLightOn:Z

.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortTransient(I[I)V
    .registers 5

    .line 738
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V

    .line 739
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 741
    :try_start_12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(I[I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method public abortTransientToType(I[II)V
    .registers 7

    .line 877
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V

    .line 878
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 879
    :try_start_10
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_5a

    if-eqz v1, :cond_3c

    .line 881
    :try_start_20
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(I[I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_34
    .catchall {:try_start_20 .. :try_end_33} :catchall_5a

    goto :goto_58

    :catch_34
    :try_start_34
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for abortTransient"

    .line 883
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_3c
    const/4 v1, 0x2

    if-ne p3, v1, :cond_58

    .line 885
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p3}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object p3
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_5a

    if-eqz p3, :cond_58

    .line 887
    :try_start_47
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/carlife/IStatusBarCarLife;->abortTransient(I[I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_51
    .catchall {:try_start_47 .. :try_end_50} :catchall_5a

    goto :goto_58

    :catch_51
    :try_start_51
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for abortTransient"

    .line 889
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_58
    :goto_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public appTransitionCancelled(I)V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 642
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public appTransitionFinished(I)V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 496
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public appTransitionPending(I)V
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 633
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public appTransitionStarting(IJJ)V
    .registers 12

    .line 650
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 652
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(IJJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 540
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 577
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 587
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 781
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 568
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public hideRecentAppsFromType(ZZI)V
    .registers 7

    .line 938
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 939
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-eqz v1, :cond_32

    .line 941
    :try_start_17
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2b
    .catchall {:try_start_17 .. :try_end_2a} :catchall_34

    goto :goto_32

    :catch_2b
    :try_start_2b
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for HIDE_RECENT_APPS"

    .line 943
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_34

    throw p0
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 759
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 761
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public hideToastToType(Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 7

    .line 989
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 990
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    if-eqz v1, :cond_2a

    .line 992
    :try_start_17
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2c

    .line 996
    :catch_2a
    :cond_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .registers 4

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRequestedGameToolsWin attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 813
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedGameToolsWin(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .registers 5

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRequestedSystemKey recent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " home="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    .line 1046
    :cond_27
    :try_start_27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedSystemKey(ZZ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method

.method public notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .registers 5

    .line 1072
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1074
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 452
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onDisplayReady(I)V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 695
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayReady(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 468
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->onEmergencyActionLaunchGestureDetected()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onFocusedDisplayChanged(I)V
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1025
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1026
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 1028
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFocusedDisplayChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2d} :catch_2e

    goto :goto_16

    :catch_2e
    :cond_2e
    return-void
.end method

.method public onProposedRotationChanged(IZ)V
    .registers 4

    .line 684
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 686
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 704
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onRecentsAnimationStateChanged(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 715
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v2, 0x0

    move v4, p1

    invoke-static {v1, p1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v5

    move v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    .line 717
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 719
    :try_start_1e
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void
.end method

.method public onSystemBarAttributesChangedToType(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;I)V
    .registers 21

    move-object v0, p0

    move/from16 v1, p8

    .line 832
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    move v4, p1

    invoke-static {v2, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v5

    move v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    .line 834
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 835
    :try_start_1e
    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_7f

    if-eqz v3, :cond_56

    .line 837
    :try_start_2e
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/statusbar/IStatusBar;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_4e
    .catchall {:try_start_2e .. :try_end_4d} :catchall_7f

    goto :goto_7d

    :catch_4e
    :try_start_4e
    const-string v0, "StatusBarManagerService"

    const-string v1, "RemoteException for onSystemBarAttributesChanged"

    .line 840
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :cond_56
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7d

    .line 842
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object v1
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_7f

    if-eqz v1, :cond_7d

    .line 844
    :try_start_61
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/carlife/IStatusBarCarLife;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_75} :catch_76
    .catchall {:try_start_61 .. :try_end_75} :catchall_7f

    goto :goto_7d

    :catch_76
    :try_start_76
    const-string v0, "StatusBarManagerService"

    const-string v1, "RemoteException for onSystemBarAttributesChanged"

    .line 847
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_7d
    :goto_7d
    monitor-exit v2

    return-void

    :catchall_7f
    move-exception v0

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public preloadRecentApps()V
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 531
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public requestWindowMagnificationConnection(Z)Z
    .registers 3

    .line 768
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 770
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestWindowMagnificationConnection(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    const/4 p0, 0x1

    return p0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V
    .registers 4

    .line 1003
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mcheckBarMapState(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1006
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void
.end method

.method public sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4

    const-string v0, "StatusBarManagerService"

    const-string/jumbo v1, "sendThreeFingerGestureKeyEvent"

    .line 1055
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 1060
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 523
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmCurrentUserId(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    return-void
.end method

.method public setDisableFlags(IILjava/lang/String;)V
    .registers 5

    .line 477
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;I)V

    return-void
.end method

.method public setDisableFlagsToType(IILjava/lang/String;I)V
    .registers 5

    .line 823
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;I)V

    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 790
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
    .registers 2

    .line 415
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmNotificationDelegate(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)V

    return-void
.end method

.method public setSysUiSafeMode(Z)V
    .registers 2

    .line 1016
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmSysUiSafeMode(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 662
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 798
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmUdfpsHbmListener(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 799
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1f

    .line 800
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 802
    :try_start_15
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 799
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public setWindowState(III)V
    .registers 5

    .line 622
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 624
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(III)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showAssistDisclosure()V
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 432
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showAssistDisclosure()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showChargingAnimation(I)V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 605
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showWirelessChargingAnimation(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 615
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showRecentApps(Z)V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 549
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    .line 551
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 552
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 553
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 555
    invoke-interface {p1, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_44} :catch_45

    goto :goto_1f

    :catch_45
    :cond_45
    return-void
.end method

.method public showRecentAppsToType(ZI)V
    .registers 6

    .line 917
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 918
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_67

    if-eqz v1, :cond_65

    .line 920
    :try_start_17
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    .line 921
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 922
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_38

    .line 923
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p1, :cond_38

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 925
    invoke-interface {p1, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_5d} :catch_5e
    .catchall {:try_start_17 .. :try_end_5d} :catchall_67

    goto :goto_38

    :catch_5e
    :try_start_5e
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for SHOW_RECENT_APPS"

    .line 930
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_67

    throw p0
.end method

.method public showScreenPinningRequest(I)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 422
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showScreenPinningRequestToType(II)V
    .registers 6

    .line 963
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 964
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    if-eqz v1, :cond_2a

    .line 966
    :try_start_17
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2c

    .line 970
    :catch_2a
    :cond_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public showShutdownUi(ZLjava/lang/String;)Z
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmContext(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 672
    :cond_15
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 674
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_28

    const/4 p0, 0x1

    return p0

    :catch_28
    :cond_28
    return v1
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .registers 19

    move-object v0, p0

    .line 750
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 752
    :try_start_9
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/statusbar/IStatusBar;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    return-void
.end method

.method public showToastToType(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;II)V
    .registers 21

    move-object v0, p0

    .line 977
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 978
    :try_start_8
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3a

    if-eqz v2, :cond_38

    .line 980
    :try_start_18
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/statusbar/IStatusBar;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_38} :catch_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_3a

    .line 984
    :catch_38
    :cond_38
    :try_start_38
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public showTransient(I[IZ)V
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V

    .line 729
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 731
    :try_start_12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(I[IZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method public showTransientToType(I[IZI)V
    .registers 8

    .line 857
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V

    .line 858
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 859
    :try_start_10
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_5a

    if-eqz v1, :cond_3c

    .line 861
    :try_start_20
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(I[IZ)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_34
    .catchall {:try_start_20 .. :try_end_33} :catchall_5a

    goto :goto_58

    :catch_34
    :try_start_34
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for showTransient"

    .line 863
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_3c
    const/4 v1, 0x2

    if-ne p4, v1, :cond_58

    .line 865
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p4}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object p4
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_5a

    if-eqz p4, :cond_58

    .line 867
    :try_start_47
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/carlife/IStatusBarCarLife;->showTransient(I[IZ)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_51
    .catchall {:try_start_47 .. :try_end_50} :catchall_5a

    goto :goto_58

    :catch_51
    :try_start_51
    const-string p0, "StatusBarManagerService"

    const-string p1, "RemoteException for showTransient"

    .line 869
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_58
    :goto_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 442
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 596
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public toggleKeyboardShortcutsMenuToType(II)V
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 952
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    if-eqz v1, :cond_2a

    .line 954
    :try_start_17
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2c

    .line 958
    :catch_2a
    :cond_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public toggleRecentApps()V
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 505
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V

    .line 507
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 509
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 511
    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_44} :catch_45

    goto :goto_1f

    :catch_45
    :cond_45
    return-void
.end method

.method public toggleRecentAppsToType(I)V
    .registers 6

    .line 897
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 898
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_60

    if-eqz v1, :cond_5e

    .line 900
    :try_start_17
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V

    .line 901
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 902
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_38

    .line 903
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_38

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 905
    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_5d} :catch_5e
    .catchall {:try_start_17 .. :try_end_5d} :catchall_60

    goto :goto_38

    .line 912
    :catch_5e
    :cond_5e
    :try_start_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_60

    throw p0
.end method

.method public toggleSplitScreen()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 486
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method
