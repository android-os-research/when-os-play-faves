.class public final Lcom/android/server/wm/DexController$H;
.super Landroid/os/Handler;
.source "DexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final APP_TRANSITION_FINISHED_FOR_PENDING_LAUNCH_ACTIVITY:I = 0x6

.field public static final DISPLAY_REPARENT_TRANSITION_TIMEOUT:I = 0x3

.field public static final KILL_ALL_PROCESS_IN_DEX:I = 0x5

.field public static final KILL_DEX_PRIMARY_PROCESS:I = 0x4

.field public static final KILL_PROCESS_AND_START_ACTIVITY:I = 0x0

.field public static final MOVE_TASKS_BACK_AND_START_PENDING_ACTIVITY:I = 0x1

.field public static final NOTIFY_WINDOW_SNAPPING:I = 0xb

.field public static final REPARENT_TO_DISPLAY_AND_START_PENDING_ACTIVITY:I = 0x2

.field public static final SHOW_CAN_NOT_SWITCH_USER_TOAST:I = 0xa

.field public static final START_DEX_HOME:I = 0x7

.field public static final WAIT_ACTIVITY_STOPPED_TIMEOUT:J = 0x1388L

.field public static final WAIT_TRANSITION_FINISH_TIMEOUT:J = 0xfa0L


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexController;Landroid/os/Looper;)V
    .registers 3

    .line 1898
    iput-object p1, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 1899
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1904
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_23a

    :pswitch_6
    goto/16 :goto_239

    .line 2000
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2001
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2002
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 2003
    iget-object v2, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v2}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmDexSnappingCallbacks(Lcom/android/server/wm/DexController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 2004
    :try_start_19
    iget-object v3, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v3}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmDexSnappingCallbacks(Lcom/android/server/wm/DexController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_23
    if-ge v1, v3, :cond_3c

    .line 2006
    iget-object v4, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v4}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmDexSnappingCallbacks(Lcom/android/server/wm/DexController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_48

    .line 2008
    :try_start_31
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IDexSnappingCallback;->onWindowSnappingChanged(ILandroid/graphics/Rect;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_48

    goto :goto_39

    :catch_35
    move-exception v4

    .line 2010
    :try_start_36
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2013
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmDexSnappingCallbacks(Lcom/android/server/wm/DexController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2014
    monitor-exit v2

    goto/16 :goto_239

    :catchall_48
    move-exception p0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_48

    throw p0

    .line 1990
    :pswitch_4b
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {p1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1992
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1993
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040429

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1992
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1995
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_239

    :pswitch_77
    const-string v0, "DexController"

    const-string v2, "handleMessage: START_DEX_HOME"

    .line 1943
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1945
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1946
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_97

    const-string p0, "DexController"

    const-string/jumbo p1, "startHomeOnDexDisplay: Cannot found DesktopModeService"

    .line 1949
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1953
    :cond_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1956
    :try_start_9b
    iget-object v4, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v4}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v4

    monitor-enter v4
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_190

    :try_start_a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1957
    iget-object v5, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-virtual {v5}, Lcom/android/server/wm/DexController;->hasMinimizedToggleTasksLocked()Z

    move-result v5

    and-int/2addr v1, v5

    if-nez v1, :cond_ba

    .line 1959
    iget-object v5, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v5}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 1961
    :cond_ba
    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_18a

    :try_start_bb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_190

    const-string v4, "DexController"

    .line 1963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START_DEX_HOME: minimizeAll for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1963
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1969
    :try_start_e2
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->startHome()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_168

    const-string v0, "DexController"

    .line 1971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START_DEX_HOME: startHome for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1971
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1977
    :try_start_109
    iget-object v0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0
    :try_end_110
    .catchall {:try_start_109 .. :try_end_110} :catchall_146

    :try_start_110
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v1, :cond_11a

    .line 1979
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->restoreToggleTasksToFrontLocked(I)V

    .line 1981
    :cond_11a
    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_110 .. :try_end_11b} :catchall_140

    :try_start_11b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_146

    const-string p0, "DexController"

    .line 1983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "START_DEX_HOME: restoreToggle for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1983
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_239

    :catchall_140
    move-exception p0

    .line 1981
    :try_start_141
    monitor-exit v0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    :try_start_142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_146
    .catchall {:try_start_142 .. :try_end_146} :catchall_146

    :catchall_146
    move-exception p0

    const-string p1, "DexController"

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_DEX_HOME: restoreToggle for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    throw p0

    :catchall_168
    move-exception p0

    const-string p1, "DexController"

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_DEX_HOME: startHome for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    throw p0

    :catchall_18a
    move-exception p0

    .line 1961
    :try_start_18b
    monitor-exit v4
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    :try_start_18c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_190
    .catchall {:try_start_18c .. :try_end_190} :catchall_190

    :catchall_190
    move-exception p0

    const-string p1, "DexController"

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START_DEX_HOME: minimizeAll for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    throw p0

    .line 1935
    :pswitch_1b2
    :try_start_1b2
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->notifyAppTransitionFinished()V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_239

    :catch_1b9
    const-string p0, "DexController"

    const-string p1, "Failed to notify AppTransitionFinished"

    .line 1937
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_239

    .line 1931
    :pswitch_1c2
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmCheckDexProcess(Lcom/android/server/wm/DexController;)Lcom/android/internal/util/ToBooleanFunction;

    move-result-object p1

    const-string/jumbo v0, "proc_dex_display_disabled"

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/DexController;->-$$Nest$mkillAllProcessIfNeeded(Lcom/android/server/wm/DexController;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    goto :goto_239

    .line 1928
    :pswitch_1cf
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmCheckDexPrimayProcess(Lcom/android/server/wm/DexController;)Lcom/android/internal/util/ToBooleanFunction;

    move-result-object p1

    const-string/jumbo v0, "proc_dex_display_enabled"

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/DexController;->-$$Nest$mkillAllProcessIfNeeded(Lcom/android/server/wm/DexController;Lcom/android/internal/util/ToBooleanFunction;Ljava/lang/String;)V

    goto :goto_239

    .line 1920
    :pswitch_1dc
    iget-object p1, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p1}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    monitor-enter p1

    :try_start_1e3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v0}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmPendingActivityInfo(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/DexController$PendingActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DexController$PendingActivityInfo;->transitionFinished()V

    const-string v0, "DexController"

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISPLAY_REPARENT_TRANSITION_TIMEOUT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {v2}, Lcom/android/server/wm/DexController;->-$$Nest$fgetmPendingActivityInfo(Lcom/android/server/wm/DexController;)Lcom/android/server/wm/DexController$PendingActivityInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    .line 1925
    monitor-exit p1
    :try_end_212
    .catchall {:try_start_1e3 .. :try_end_212} :catchall_216

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_239

    :catchall_216
    move-exception p0

    :try_start_217
    monitor-exit p1
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1917
    :pswitch_21c
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$mreparentToDisplayAndStartPendingActivity(Lcom/android/server/wm/DexController;)V

    goto :goto_239

    .line 1912
    :pswitch_222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DexRestartAppInfo;

    .line 1913
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1914
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/DexController;->-$$Nest$mmoveTasksBackAndStartPendingActivity(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexRestartAppInfo;I)V

    goto :goto_239

    .line 1907
    :pswitch_22e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DexRestartAppInfo;

    .line 1908
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1909
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/DexController;->-$$Nest$mKillProcessAndStartActivity(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DexRestartAppInfo;I)V

    :goto_239
    return-void

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_22e
        :pswitch_222
        :pswitch_21c
        :pswitch_1dc
        :pswitch_1cf
        :pswitch_1c2
        :pswitch_1b2
        :pswitch_77
        :pswitch_6
        :pswitch_6
        :pswitch_4b
        :pswitch_8
    .end packed-switch
.end method
