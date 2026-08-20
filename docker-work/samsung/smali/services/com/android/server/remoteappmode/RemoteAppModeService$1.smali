.class public Lcom/android/server/remoteappmode/RemoteAppModeService$1;
.super Ljava/lang/Object;
.source "RemoteAppModeService.java"

# interfaces
.implements Lcom/android/server/wm/RemoteAppControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/RemoteAppModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveTaskToBackLocked(I)Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmTaskChangeNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 159
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmTaskChangeNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->notifyTaskTryGoToBackground(I)V

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;II)Z
    .registers 19
    .param p10    # I
        .annotation build Lcom/android/server/wm/RemoteAppControllerCallbacks$InterceptReason;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    .line 137
    iget-object v2, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmStartActivityInterceptNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    .line 138
    iget-object v2, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmLock(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz v6, :cond_38

    .line 139
    :try_start_15
    iget-object v4, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v4}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmTransferTaskMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 140
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmTransferTaskMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v2

    return v3

    .line 143
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_59

    .line 145
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    .line 147
    iget-object v2, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    move-object v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-static {v2, p1, p7, v4, v5}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$msaveCallerInfo(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 149
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmStartActivityInterceptNotifier(Lcom/android/server/remoteappmode/RemoteAppModeService;)Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->notify(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;I)V

    const/4 v0, 0x1

    return v0

    :catchall_59
    move-exception v0

    .line 143
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    return v3
.end method
