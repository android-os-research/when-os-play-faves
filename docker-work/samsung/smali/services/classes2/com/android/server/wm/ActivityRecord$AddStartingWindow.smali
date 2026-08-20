.class public Lcom/android/server/wm/ActivityRecord$AddStartingWindow;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddStartingWindow"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 2868
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$AddStartingWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 2874
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2877
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2e

    .line 2879
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz p0, :cond_29

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x6d726936

    const-string/jumbo v5, "startingData was nulled out before handling mAddStartingWindow: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2882
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_115

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2885
    :cond_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_115

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string v0, "ActivityTaskManager"

    .line 2889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add starting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": typeParam="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/wm/StartingData;->mTypeParams:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_6f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6728e9b

    const-string v8, "Add starting %s: startingData=%s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v0, v9, v4

    aput-object v5, v9, v3

    invoke-static {v6, v7, v4, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    const/4 v0, 0x0

    .line 2898
    :try_start_70
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object v2
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_76} :catch_77

    goto :goto_80

    :catch_77
    move-exception v2

    const-string v5, "ActivityTaskManager"

    const-string v6, "Exception when adding starting window"

    .line 2900
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    :goto_80
    if-eqz v2, :cond_fc

    .line 2904
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2906
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v7, :cond_ba

    .line 2907
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v7, :cond_b2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x6ca66349

    const-string v10, "Aborted starting %s: startingData=%s"

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v7, v11, v3

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2910
    :cond_b2
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2911
    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    move v0, v3

    goto :goto_bd

    .line 2914
    :cond_ba
    iput-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move v0, v4

    :goto_bd
    if-nez v0, :cond_ec

    .line 2917
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v6, :cond_ec

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4d0762a6

    const-string v10, "Added starting %s: startingWindow=%s startingView=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v7, v11, v3

    aput-object p0, v11, v1

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2921
    :cond_ec
    monitor-exit v5
    :try_end_ed
    .catchall {:try_start_89 .. :try_end_ed} :catchall_f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_114

    .line 2923
    invoke-virtual {v2, v4}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->remove(Z)V

    goto :goto_114

    :catchall_f6
    move-exception p0

    .line 2921
    :try_start_f7
    monitor-exit v5
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2926
    :cond_fc
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_114

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x4ac4af81    # 6444992.5f

    const-string v2, "Surface returned was null: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_114
    :goto_114
    return-void

    :catchall_115
    move-exception p0

    .line 2885
    :try_start_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
