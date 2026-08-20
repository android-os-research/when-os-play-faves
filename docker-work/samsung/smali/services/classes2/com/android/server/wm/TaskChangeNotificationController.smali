.class public Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field public static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_ROOT_TASK_MSG:I = 0x7

.field public static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field public static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED_MSG:I = 0x13

.field public static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field public static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field public static final NOTIFY_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field public static final NOTIFY_ACTIVITY_ROTATED_MSG:I = 0x1a

.field public static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field public static final NOTIFY_BACK_PRESSED_ON_TASK_ROOT:I = 0x14

.field public static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field public static final NOTIFY_LOCK_TASK_MODE_CHANGED_MSG:I = 0x1c

.field public static final NOTIFY_OCCLUDE_CHANGE_NOTICE:I = 0x1d

.field public static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field public static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field public static final NOTIFY_TASK_DISPLAY_CHANGED_LISTENERS_MSG:I = 0x15

.field public static final NOTIFY_TASK_FOCUS_CHANGED_MSG:I = 0x18

.field public static final NOTIFY_TASK_LIST_FROZEN_UNFROZEN_MSG:I = 0x17

.field public static final NOTIFY_TASK_LIST_UPDATED_LISTENERS_MSG:I = 0x16

.field public static final NOTIFY_TASK_MOVED_TO_BACK_LISTENERS_MSG:I = 0x1b

.field public static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field public static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field public static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field public static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field public static final NOTIFY_TASK_REQUESTED_ORIENTATION_CHANGED_MSG:I = 0x19

.field public static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field public static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field public static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2

.field public static final NOTIFY_TASK_WINDOWING_MODE_CHANGED_MSG:I = 0x1e


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLocalTaskStackListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field public final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteTaskStackListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$0NzPBxJ1aTNpucnnvZpgoO53sIY(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kX9Y9vfTpxOM6Mx6y9gwCc7foo(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8dQcHx3zZhZOHU-Wt3hJeWHXuik(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BTQ6ibS6BlSofIYkLMIpn-Qy3mk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfF_ZPe4028k55xyrXE_bUHIOo4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdUJ8liR-JlGEijEsibnixLPOLU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZCisAYO9uTyyTUBTTal7TYFEwQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBk2SN2scla7zCIEiVdZSu-m5Dg(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaHJcRCANkoEWZUAo0_HkOT6Eok(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMj7gwe8-ZVmcV3VJdWtXjdR0vs(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$26(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OAICxS0BeIEmt8Ip4IJUcKsH1Ac(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5HZs0JcSry3JNf16vOQ8nxYyKY(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2d-XFQRvDvm0yxyMfMq6Dla1Ew(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VPW583qD7U9PCgOIZE3DPIgO-oQ(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZtnfXpKj__3fDR5OuARu3N-fttw(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1zzj0_i0lhti3nJc00ZzvA7MMU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_awuNSURc7ttTEnPds7jhEKdXfs(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGxW1VRPQkjYBpB8XZDrnumUFTk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgeX_zsTFuBpyOgTVdYTBanG7Ik(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$23(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gubvlDzx5VAcCdKc1xeXcMPtakg(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jxOOK1u4MJy5_9sX9CuWQfc2qS4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbhVv0eRJ-i8k2lPI7c0_G1fJ8w(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pOYVnjB9BcbV9eaSU-52ikC3JV8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDrFjIsvWX1A57JfxANHf8TPBbk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxpLvBrJ0N4NATErAvxO6jwafbU(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xLZiucMiX8fRugdgtHvJj4-DsTk(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$25(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuW9RtpRm3I43pFJV8hz9GSjGZ8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityDismissingDockedTask(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityForcedResizable(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayFailed(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityLaunchOnSecondaryDisplayRerouted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityPinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityRestartAttempt(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyActivityUnpinned(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyBackPressedOnTaskRoot(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyLockTaskModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyOccludeChangeNotice(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyOnActivityRotation(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskCreated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDescriptionChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskDisplayChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskFocusChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListFrozen(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskListUpdated(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToBack(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskMovedToFront(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskProfileLocked(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemovalStarted(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRemoved(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskRequestedOrientationChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskSnapshotChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskStackChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyTaskWindowingModeChanged(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V
    .registers 4

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 101
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda11;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 105
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda19;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 109
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda20;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 113
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda21;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 117
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda22;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 121
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda23;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 125
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda24;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 129
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda25;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 134
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda26;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 138
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 144
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 148
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 159
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 163
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 167
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 171
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda7;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 175
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 179
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 183
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda10;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 187
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda12;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 191
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda13;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 195
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda14;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 199
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda15;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 203
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda16;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 208
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda17;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 215
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda18;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 326
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 327
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 140
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    invoke-interface {p0, v0, v1, v4, v2}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return-void
.end method

.method public static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, p1}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 151
    check-cast p1, Ljava/lang/String;

    .line 152
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_c
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    return-void
.end method

.method public static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    return-void
.end method

.method public static synthetic lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    return-void
.end method

.method public static synthetic lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    return-void
.end method

.method public static synthetic lambda$new$23(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$new$25(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-class v1, Landroid/content/ComponentName;

    .line 210
    invoke-static {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 209
    :goto_11
    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onOccludeChangeNotice(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static synthetic lambda$new$26(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskWindowingModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method public static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    return-void
.end method


# virtual methods
.method public final forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 6

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 377
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    :catch_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 382
    :cond_1b
    :try_start_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 364
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    :catch_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 369
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 370
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0
.end method

.method public notifyActivityDismissingDockedRootTask(Ljava/lang/String;)V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityForcedResizable(IILjava/lang/String;)V
    .registers 6

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 448
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 449
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .registers 6

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 457
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 458
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V
    .registers 6

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 466
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 467
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 399
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 398
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 400
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->sendingUid:I

    .line 401
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 402
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRequestedOrientationChanged(II)V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 502
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 7

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 421
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 422
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 423
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 424
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 425
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 427
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 428
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyActivityUnpinned()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 410
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 545
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyLockTaskModeChanged(I)V
    .registers 5

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 612
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyOccludeChangeNotice(Landroid/content/ComponentName;Z)V
    .registers 6

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 619
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOccludeChangeNotice:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 620
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyOnActivityRotation(I)V
    .registers 5

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 596
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 473
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 474
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 494
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskDisplayChanged(II)V
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 554
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 555
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskFocusChanged(IZ)V
    .registers 5

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 579
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 580
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListFrozen(Z)V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 572
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskListUpdated()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 564
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToBack(Landroid/app/TaskInfo;)V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 605
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 487
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 524
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 513
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRemoved(I)V
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 481
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskRequestedOrientationChanged(II)V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 587
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 588
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 6

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 533
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 534
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTaskStackChanged()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 392
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyTaskWindowingModeChanged(I)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 629
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    .line 331
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_23

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 333
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 334
    instance-of v1, p1, Landroid/app/TaskStackListener;

    if-eqz v1, :cond_19

    .line 335
    move-object v1, p1

    check-cast v1, Landroid/app/TaskStackListener;

    invoke-virtual {v1}, Landroid/app/TaskStackListener;->setIsLocal()V

    .line 337
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_1e
    monitor-exit v0

    goto :goto_32

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    if-eqz p1, :cond_32

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 342
    :try_start_28
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 343
    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3

    .line 348
    instance-of v0, p1, Landroid/os/Binder;

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 350
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 351
    monitor-exit v0

    goto :goto_20

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0

    :cond_11
    if-eqz p1, :cond_20

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 354
    :try_start_16
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 355
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    return-void
.end method
