.class public final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FORCE_GC:I = 0xf

.field public static final INSETS_CHANGED:I = 0x42

.field public static final LAYOUT_AND_ASSIGN_WINDOW_LAYERS_IF_NEEDED:I = 0x3f

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final ON_POINTER_DOWN_OUTSIDE_FOCUS:I = 0x3e

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPARENT_TASK_TO_DEFAULT_DISPLAY:I = 0x41

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_MULTI_WINDOW_STACKS:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e

.field public static final WINDOW_STATE_BLAST_SYNC_TIMEOUT:I = 0x40


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$AA8d-gy8YL7QSB4R8sA3XqcHXpU(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService$H;->lambda$handleMessage$0(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 5800
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    .line 5859
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 5850
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    .line 5851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: entry what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_539

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-eq v0, v1, :cond_519

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_4f7

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4db

    const/16 v1, 0x2e

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4a5

    const/16 v1, 0x37

    if-eq v0, v1, :cond_482

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_472

    const/16 v1, 0x33

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v1, :cond_416

    const/16 v1, 0x34

    if-eq v0, v1, :cond_3e9

    packed-switch v0, :pswitch_data_568

    packed-switch v0, :pswitch_data_574

    packed-switch v0, :pswitch_data_580

    packed-switch v0, :pswitch_data_58a

    packed-switch v0, :pswitch_data_596

    goto/16 :goto_555

    .line 6213
    :pswitch_57
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6214
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    if-lez p1, :cond_6c

    .line 6215
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 6218
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6220
    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_72

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_72
    move-exception p0

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6204
    :pswitch_78
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6205
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Task;

    .line 6206
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 6208
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 6209
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7d .. :try_end_93} :catchall_98

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_98
    move-exception p0

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6187
    :pswitch_9e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6188
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowState;

    const-string v1, "WindowManager"

    .line 6189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blast sync timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 6196
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mPostDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 6197
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6200
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_a3 .. :try_end_d4} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_d9
    move-exception p0

    :try_start_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6179
    :pswitch_df
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6180
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 6181
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutAndAssignWindowLayersScheduled:Z

    .line 6182
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6183
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_f6
    move-exception p0

    :try_start_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6161
    :pswitch_fc
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 6165
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 6166
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6167
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 6168
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 6169
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0, v1, v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$monPointerDownOutsideFocusLocked(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;III)V

    .line 6175
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_101 .. :try_end_118} :catchall_11d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_11d
    move-exception p0

    :try_start_11e
    monitor-exit v0
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6154
    :pswitch_123
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6155
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 6157
    monitor-exit p1
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_136

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_136
    move-exception p0

    :try_start_137
    monitor-exit p1
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6146
    :pswitch_13c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_141
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6147
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmRecentsAnimationController(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_155

    .line 6148
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmRecentsAnimationController(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 6150
    :cond_155
    monitor-exit v0
    :try_end_156
    .catchall {:try_start_141 .. :try_end_156} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_15b
    move-exception p0

    :try_start_15c
    monitor-exit v0
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6085
    :pswitch_161
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_166
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6086
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    if-eqz p1, :cond_17c

    .line 6089
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result p1

    if-eqz p1, :cond_17c

    .line 6090
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6092
    :cond_17c
    monitor-exit v0
    :try_end_17d
    .catchall {:try_start_166 .. :try_end_17d} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_182
    move-exception p0

    :try_start_183
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6078
    :pswitch_188
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_18d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6079
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 6080
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 6081
    monitor-exit p1
    :try_end_199
    .catchall {:try_start_18d .. :try_end_199} :catchall_19e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_19e
    move-exception p0

    :try_start_19f
    monitor-exit p1
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6068
    :pswitch_1a4
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1a9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6069
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz v0, :cond_1b8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x7948488b

    invoke-static {v0, v1, v2, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6070
    :cond_1b8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mcheckBootAnimationCompleteLocked(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v0

    .line 6071
    monitor-exit p1
    :try_end_1bf
    .catchall {:try_start_1a9 .. :try_end_1bf} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_555

    .line 6073
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mperformEnableScreen(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_555

    :catchall_1cb
    move-exception p0

    .line 6071
    :try_start_1cc
    monitor-exit p1
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6010
    :pswitch_1d1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_555

    .line 6040
    :pswitch_1d8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    .line 6041
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 6042
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Session;

    if-eqz p1, :cond_1ee

    .line 6045
    :try_start_1e7
    iget-object p0, p1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {p0, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_1ec
    .catch Landroid/os/RemoteException; {:try_start_1e7 .. :try_end_1ec} :catch_555

    goto/16 :goto_555

    .line 6049
    :cond_1ee
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6051
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1f8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move v3, v2

    .line 6052
    :goto_1fc
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_218

    .line 6053
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Session;

    iget-object v4, v4, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1fc

    .line 6056
    :cond_218
    monitor-exit v1
    :try_end_219
    .catchall {:try_start_1f8 .. :try_end_219} :catchall_22e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6057
    :goto_21c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_555

    .line 6059
    :try_start_222
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowSessionCallback;

    invoke-interface {p0, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_22b
    .catch Landroid/os/RemoteException; {:try_start_222 .. :try_end_22b} :catch_22b

    :catch_22b
    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    :catchall_22e
    move-exception p0

    .line 6056
    :try_start_22f
    monitor-exit v1
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_22e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6030
    :pswitch_234
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 6031
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_23d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6032
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    .line 6033
    monitor-exit v0
    :try_end_24b
    .catchall {:try_start_23d .. :try_end_24b} :catchall_255

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_555

    .line 6035
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_555

    :catchall_255
    move-exception p0

    .line 6033
    :try_start_256
    monitor-exit v0
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_255

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6015
    :pswitch_25b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6016
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_264
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6017
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_274

    .line 6018
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 6021
    :cond_274
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_27f

    .line 6022
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->onActivityDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 6025
    :cond_27f
    monitor-exit v0
    :try_end_280
    .catchall {:try_start_264 .. :try_end_280} :catchall_285

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_285
    move-exception p0

    :try_start_286
    monitor-exit v0
    :try_end_287
    .catchall {:try_start_286 .. :try_end_287} :catchall_285

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6005
    :pswitch_28b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mshowStrictModeViolation(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_555

    .line 5991
    :pswitch_296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 5992
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_29f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5993
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v1, :cond_2ba

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x5afec1f7

    const-string v6, "Timeout waiting for drawn: undrawn=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v5, v2, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5995
    :cond_2ba
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5996
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    .line 5997
    monitor-exit v0
    :try_end_2ca
    .catchall {:try_start_29f .. :try_end_2ca} :catchall_2d4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_555

    .line 5999
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_555

    :catchall_2d4
    move-exception p0

    .line 5997
    :try_start_2d5
    monitor-exit v0
    :try_end_2d6
    .catchall {:try_start_2d5 .. :try_end_2d6} :catchall_2d4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5985
    :pswitch_2da
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_555

    .line 5980
    :pswitch_2e1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_555

    .line 5948
    :pswitch_2e8
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_2ed
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5949
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_2fe

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x1331e106

    const-string v6, "App freeze timeout expired."

    invoke-static {v0, v1, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5950
    :cond_2fe
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5951
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_309
    if-ltz v0, :cond_31b

    .line 5952
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_309

    .line 5954
    :cond_31b
    monitor-exit p1
    :try_end_31c
    .catchall {:try_start_2ed .. :try_end_31c} :catchall_321

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_321
    move-exception p0

    :try_start_322
    monitor-exit p1
    :try_end_323
    .catchall {:try_start_322 .. :try_end_323} :catchall_321

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5943
    :pswitch_327
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mperformEnableScreen(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_555

    .line 5923
    :pswitch_32e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_333
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v0

    if-eqz v0, :cond_34c

    const/16 v0, 0xf

    const-wide/16 v1, 0x7d0

    .line 5929
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5930
    monitor-exit p1
    :try_end_348
    .catchall {:try_start_333 .. :try_end_348} :catchall_364

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5934
    :cond_34c
    :try_start_34c
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz p0, :cond_357

    .line 5935
    monitor-exit p1
    :try_end_353
    .catchall {:try_start_34c .. :try_end_353} :catchall_364

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5937
    :cond_357
    :try_start_357
    monitor-exit p1
    :try_end_358
    .catchall {:try_start_357 .. :try_end_358} :catchall_364

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5938
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_555

    :catchall_364
    move-exception p0

    .line 5937
    :try_start_365
    monitor-exit p1
    :try_end_366
    .catchall {:try_start_365 .. :try_end_366} :catchall_364

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5869
    :pswitch_36a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "window_animation_scale"

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5871
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "transition_animation_scale"

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5874
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "animator_duration_scale"

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5878
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-eqz p1, :cond_3d9

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result p1

    float-to-double v0, p1

    cmpl-double p1, v0, v4

    if-eqz p1, :cond_3d9

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result p1

    float-to-double v0, p1

    cmpl-double p1, v0, v4

    if-nez p1, :cond_3c9

    goto :goto_3d9

    .line 5884
    :cond_3c9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "remove_animations"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_555

    .line 5881
    :cond_3d9
    :goto_3d9
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "remove_animations"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_555

    .line 6115
    :cond_3e9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6116
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3f2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6128
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6129
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 6130
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 6131
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 6132
    monitor-exit v0
    :try_end_40b
    .catchall {:try_start_3f2 .. :try_end_40b} :catchall_410

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_410
    move-exception p0

    :try_start_411
    monitor-exit v0
    :try_end_412
    .catchall {:try_start_411 .. :try_end_412} :catchall_410

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5894
    :cond_416
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_458

    if-eq p1, v3, :cond_43e

    if-eq p1, v4, :cond_420

    goto/16 :goto_555

    .line 5911
    :cond_420
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5912
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result v2

    .line 5911
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmAnimatorDurationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    .line 5915
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto/16 :goto_555

    .line 5904
    :cond_43e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5905
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result p0

    .line 5904
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmTransitionAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    goto/16 :goto_555

    .line 5897
    :cond_458
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5898
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;)F

    move-result p0

    .line 5897
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fputmWindowAnimationScaleSetting(Lcom/android/server/wm/WindowManagerService;F)V

    goto/16 :goto_555

    .line 6142
    :cond_472
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_47d

    move v2, v3

    :cond_47d
    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    goto/16 :goto_555

    .line 6136
    :cond_482
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_487
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6137
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 6138
    monitor-exit v0
    :try_end_49a
    .catchall {:try_start_487 .. :try_end_49a} :catchall_49f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_49f
    move-exception p0

    :try_start_4a0
    monitor-exit v0
    :try_end_4a1
    .catchall {:try_start_4a0 .. :try_end_4a1} :catchall_49f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6105
    :cond_4a5
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_4aa
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6106
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_4b6
    if-ltz p1, :cond_4c8

    .line 6107
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 6108
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->onWindowReplacementTimeout()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4b6

    .line 6110
    :cond_4c8
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6111
    monitor-exit v0
    :try_end_4d0
    .catchall {:try_start_4aa .. :try_end_4d0} :catchall_4d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_555

    :catchall_4d5
    move-exception p0

    :try_start_4d6
    monitor-exit v0
    :try_end_4d7
    .catchall {:try_start_4d6 .. :try_end_4d7} :catchall_4d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6096
    :cond_4db
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_4e0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6097
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_4ec

    .line 6099
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 6101
    :cond_4ec
    monitor-exit v0
    :try_end_4ed
    .catchall {:try_start_4e0 .. :try_end_4ed} :catchall_4f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_555

    :catchall_4f1
    move-exception p0

    :try_start_4f2
    monitor-exit v0
    :try_end_4f3
    .catchall {:try_start_4f2 .. :try_end_4f3} :catchall_4f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5959
    :cond_4f7
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_4fc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5960
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v0, :cond_50e

    .line 5961
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const-string v0, "client-timeout"

    .line 5962
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5965
    :cond_50e
    monitor-exit p1
    :try_end_50f
    .catchall {:try_start_4fc .. :try_end_50f} :catchall_513

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_555

    :catchall_513
    move-exception p0

    :try_start_514
    monitor-exit p1
    :try_end_515
    .catchall {:try_start_514 .. :try_end_515} :catchall_513

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5970
    :cond_519
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_555

    .line 5971
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_522
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5972
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 5973
    monitor-exit p1
    :try_end_52a
    .catchall {:try_start_522 .. :try_end_52a} :catchall_533

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5974
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_555

    :catchall_533
    move-exception p0

    .line 5973
    :try_start_534
    monitor-exit p1
    :try_end_535
    .catchall {:try_start_534 .. :try_end_535} :catchall_533

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 5855
    :cond_539
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 5856
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_542
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5859
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/WindowManagerService$H$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$H$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 5864
    monitor-exit p1
    :try_end_552
    .catchall {:try_start_542 .. :try_end_552} :catchall_561

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6224
    :catch_555
    :cond_555
    :goto_555
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz p0, :cond_560

    const-string p0, "WindowManager"

    const-string p1, "handleMessage: exit"

    .line 6225
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_560
    return-void

    :catchall_561
    move-exception p0

    .line 5864
    :try_start_562
    monitor-exit p1
    :try_end_563
    .catchall {:try_start_562 .. :try_end_563} :catchall_561

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_568
    .packed-switch 0xe
        :pswitch_36a
        :pswitch_32e
        :pswitch_327
        :pswitch_2e8
    .end packed-switch

    :pswitch_data_574
    .packed-switch 0x16
        :pswitch_2e1
        :pswitch_2da
        :pswitch_296
        :pswitch_28b
    .end packed-switch

    :pswitch_data_580
    .packed-switch 0x20
        :pswitch_25b
        :pswitch_234
        :pswitch_1d8
    .end packed-switch

    :pswitch_data_58a
    .packed-switch 0x24
        :pswitch_1d1
        :pswitch_1a4
        :pswitch_188
        :pswitch_161
    .end packed-switch

    :pswitch_data_596
    .packed-switch 0x3c
        :pswitch_13c
        :pswitch_123
        :pswitch_fc
        :pswitch_df
        :pswitch_9e
        :pswitch_78
        :pswitch_57
    .end packed-switch
.end method

.method public sendNewMessageDelayed(ILjava/lang/Object;J)V
    .registers 5

    .line 6231
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6232
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
