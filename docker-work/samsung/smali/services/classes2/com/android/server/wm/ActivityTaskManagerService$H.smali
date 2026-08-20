.class public final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final END_POWER_MODE_UNKNOWN_VISIBILITY_MSG:I = 0x3

.field public static final FIRST_ACTIVITY_TASK_MSG:I = 0x64

.field public static final FIRST_SUPERVISOR_TASK_MSG:I = 0xc8

.field public static final REPORT_TIME_TRACKER_MSG:I = 0x1

.field public static final RESUME_FG_APP_SWITCH_MSG:I = 0x4

.field public static final START_CANCELLED_BY_TEMPERATURE:I = 0x5

.field public static final UPDATE_PROCESS_ANIMATING_STATE:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 6742
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 6748
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_83

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v2, :cond_51

    if-eq v0, v3, :cond_31

    const/4 v2, 0x5

    if-eq v0, v2, :cond_14

    goto/16 :goto_a8

    .line 6785
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmOverheatTextId(Lcom/android/server/wm/ActivityTaskManagerService;)I

    move-result p0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 6786
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a8

    .line 6776
    :cond_31
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6777
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I

    move-result v0

    if-nez v0, :cond_46

    .line 6778
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 6780
    :cond_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_a8

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6762
    :cond_51
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6763
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 6764
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 6765
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const/16 v2, 0xc

    if-ne p1, v2, :cond_78

    .line 6768
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v4, v4, v1, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 6772
    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_a8

    :catchall_7d
    move-exception p0

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6755
    :cond_83
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    .line 6756
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6757
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 6758
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_a8

    :catchall_97
    move-exception p0

    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 6750
    :cond_9d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppTimeTracker;

    .line 6751
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    :goto_a8
    return-void
.end method
