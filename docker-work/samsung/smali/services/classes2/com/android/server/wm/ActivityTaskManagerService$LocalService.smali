.class public final Lcom/android/server/wm/ActivityTaskManagerService$LocalService;
.super Lcom/android/server/wm/ActivityTaskManagerInternal;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public mFocusOrders:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsChangingFocus:Z

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$ERjBpBoLfq3Sx6m28zzu9KM9lvE(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$enableScreenAfterBoot$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$FJ44KSleUnJoOxnd3UTNib_q7NU(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$updateTopComponentForFactoryTest$4(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PY4rpuHyCaBk5IXkasYQcz8zrYw(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$restartTaskActivityProcessIfVisible$6(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h6FXZUT_ifBZq6RNmCTH90qAFhY(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showSystemReadyErrorDialogsIfNeeded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lm991-ZK_rOHixUnMutqY3cB7no(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showRescuePartyDialog$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$qchmRp4tmzFt73EjK6kUjMSdqHg(Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$getAttachedNonFinishingActivityForTask$3(Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yeZOkjwvByS_ueYQi7MM5B7RDfA(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showSystemReadyErrorDialogsIfNeeded$2()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 6824
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;-><init>()V

    .line 8595
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->mFocusOrders:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 8596
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->mIsChangingFocus:Z

    return-void
.end method

.method private synthetic lambda$attachApplication$5(Lcom/android/server/wm/WindowProcessController;)V
    .registers 8

    .line 7635
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmIdsLock(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7636
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetIdsClearSet(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 7638
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_70

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7639
    iget v3, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_3e

    .line 7640
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_6a

    if-eqz v5, :cond_3e

    .line 7642
    :try_start_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/app/IApplicationThread;->clearIdsTrainingData(Z)V

    .line 7643
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_37
    .catchall {:try_start_2b .. :try_end_35} :catchall_6a

    move v2, v4

    goto :goto_3e

    :catch_37
    :try_start_37
    const-string p1, "ActivityTaskManager"

    const-string v3, "Failed to clear Ids Training Data"

    .line 7646
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7649
    :cond_3e
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_6a

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_70

    if-eqz v2, :cond_68

    .line 7651
    :try_start_44
    new-instance p0, Ljava/io/ObjectOutputStream;

    new-instance p1, Ljava/io/FileOutputStream;

    const-string v2, "/data/system/idsFile.txt"

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_50} :catch_61
    .catchall {:try_start_44 .. :try_end_50} :catchall_70

    .line 7652
    :try_start_50
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    .line 7653
    :try_start_53
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_61
    .catchall {:try_start_53 .. :try_end_56} :catchall_70

    goto :goto_68

    :catchall_57
    move-exception p1

    .line 7651
    :try_start_58
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p0

    :try_start_5d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p1
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_70

    :catch_61
    :try_start_61
    const-string p0, "ActivityTaskManager"

    const-string p1, "Error writing IDS file during bindApplication."

    .line 7654
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    :cond_68
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_70

    return-void

    :catchall_6a
    move-exception p1

    .line 7649
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :catchall_70
    move-exception p0

    .line 7657
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_70

    throw p0
.end method

.method private synthetic lambda$enableScreenAfterBoot$0()V
    .registers 1

    .line 7141
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->enableScreenAfterBoot()V

    return-void
.end method

.method public static synthetic lambda$getAttachedNonFinishingActivityForTask$3(Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 7311
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 7312
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$removeTaskByCmpName$7(ILjava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 11

    .line 8494
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v0, "all"

    const/4 v1, -0x1

    .line 8496
    invoke-virtual {p3, v0, v1}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p3

    .line 8497
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_49

    .line 8498
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_46

    .line 8500
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 8501
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p1, :cond_46

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 8503
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 8505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8507
    :try_start_33
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v6, "remove-task-by-knox"

    invoke-virtual {v2, v3, v1, v1, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_41

    .line 8510
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8511
    throw p0

    :cond_46
    :goto_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_49
    return-void
.end method

.method public static synthetic lambda$restartTaskActivityProcessIfVisible$6(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 8364
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$showRescuePartyDialog$8()V
    .registers 5

    .line 8575
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 8576
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 8577
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    .line 8578
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 8579
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_2a

    const v2, 0x1040b85

    goto :goto_2d

    :cond_2a
    const v2, 0x1040b84

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8582
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_40

    const v2, 0x1040b83

    goto :goto_43

    :cond_40
    const v2, 0x1040b82

    :goto_43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 8585
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v3, 0x104000a

    .line 8586
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v3, 0x1

    .line 8587
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 8585
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 8588
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_65
    return-void
.end method

.method private synthetic lambda$showSystemReadyErrorDialogsIfNeeded$1()V
    .registers 5

    .line 7161
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7162
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 7163
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    .line 7164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 7165
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v2, 0x10401ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 7166
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v2, 0x1040df3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 7167
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v3, 0x104000a

    .line 7168
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v3, 0x1

    .line 7169
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7167
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 7170
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_55
    return-void
.end method

.method private synthetic lambda$showSystemReadyErrorDialogsIfNeeded$2()V
    .registers 5

    .line 7180
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7181
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 7182
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v1, 0x0

    .line 7183
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 7184
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v2, 0x10401ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 7185
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v2, 0x1040df2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 7186
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    const v3, 0x104000a

    .line 7187
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const/4 v3, 0x1

    .line 7188
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7186
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 7189
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_55
    return-void
.end method

.method private synthetic lambda$updateTopComponentForFactoryTest$4(Ljava/lang/CharSequence;)V
    .registers 4

    .line 7444
    new-instance v0, Lcom/android/server/wm/FactoryErrorDialog;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 7445
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7446
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->ensureBootCompleted()V

    return-void
.end method


# virtual methods
.method public attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7624
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x20

    .line 7625
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachApplication:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_35

    .line 7629
    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->attachApplication(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    .line 7661
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7662
    throw p0

    :catchall_35
    move-exception p0

    .line 7663
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p0
.end method

.method public bringTaskToForeground(III)V
    .registers 4

    .line 8226
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexController;->bringTaskToForeground(III)V

    return-void
.end method

.method public canCloseSystemDialogs(II)Z
    .registers 3

    .line 6996
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mcanCloseSystemDialogs(Lcom/android/server/wm/ActivityTaskManagerService;II)Z

    move-result p0

    return p0
.end method

.method public canGcNow()Z
    .registers 3

    .line 7977
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7978
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_21
    move-exception p0

    .line 7979
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canShowErrorDialogs()Z
    .registers 6

    .line 8136
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8137
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v3, :cond_50

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 8138
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "no_system_error_dialogs"

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8140
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    .line 8139
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8141
    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8142
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-nez p0, :cond_50

    :cond_4f
    const/4 v2, 0x1

    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_55

    .line 8137
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_55
    move-exception p0

    .line 8143
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public changeFocusByTabKey()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .registers 4

    .line 6990
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cleanupDisabledPackageComponents(Ljava/lang/String;Ljava/util/Set;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 7573
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7575
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/RootWindowContainer;->finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p4, :cond_28

    .line 7578
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 7579
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 7583
    :cond_28
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 7585
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public cleanupRecentTasksForUser(I)V
    .registers 3

    .line 8088
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8089
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 8090
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 7092
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7093
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 7094
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public clearHomeStack(I)V
    .registers 2

    .line 8236
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->clearHomeStack(I)V

    return-void
.end method

.method public clearLockedTasks(Ljava/lang/String;)V
    .registers 3

    .line 8116
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8117
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    .line 8118
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 7282
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7283
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 7284
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p1, :cond_15

    .line 7285
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7287
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 8

    const-string v0, "closeSystemDialogs"

    .line 7499
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 7500
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 7502
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    return-void

    .line 7506
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7508
    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_7c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v5, 0x2710

    if-lt v1, v5, :cond_59

    .line 7512
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 7513
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPerceptible()Z

    move-result v1

    if-nez v1, :cond_59

    const-string p0, "ActivityTaskManager"

    .line 7514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring closeSystemDialogs "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from background process "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7516
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_1e .. :try_end_52} :catchall_76

    .line 7526
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 7519
    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs(Ljava/lang/String;)V

    .line 7521
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogActivities(Ljava/lang/String;)V

    .line 7522
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_76

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7524
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->broadcastCloseSystemDialogs(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_7c

    .line 7526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_76
    move-exception p0

    .line 7522
    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    .line 7526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7527
    throw p0
.end method

.method public closeSystemDialogs(Ljava/lang/String;I)V
    .registers 9

    const-string v0, "closeSystemDialogs"

    .line 7536
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 7537
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 7539
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    return-void

    .line 7543
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7545
    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_82

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v5, 0x2710

    if-lt v1, v5, :cond_5f

    .line 7549
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 7550
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPerceptible()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 7552
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v1

    if-nez v1, :cond_5f

    const-string p0, "ActivityTaskManager"

    .line 7554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring closeSystemDialogs "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from background process "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7556
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_1e .. :try_end_58} :catchall_7c

    .line 7565
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 7559
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    .line 7560
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogActivities(Ljava/lang/String;I)V

    .line 7561
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_7c

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7563
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->broadcastCloseSystemDialogs(Ljava/lang/String;I)V
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_82

    .line 7565
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7c
    move-exception p0

    .line 7561
    :try_start_7d
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p0

    .line 7565
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7566
    throw p0
.end method

.method public compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 3

    .line 7255
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7256
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_13
    move-exception p0

    .line 7257
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 3

    .line 8254
    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;)V

    return-object v0
.end method

.method public createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 4

    .line 8261
    new-instance v0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService;)V

    return-object v0
.end method

.method public createSleepTokenAcquirer(Ljava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;
    .registers 3

    .line 6827
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6828
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    return-object v0
.end method

.method public disableDexDisplay()I
    .registers 2

    const-string p0, "ActivityTaskManager"

    const-string v0, "disableDexDisplay: failed, reason=feature_off"

    .line 8405
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public dismissSplitScreenMode(Z)V
    .registers 4

    .line 8558
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8559
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 8560
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 8561
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1b
    if-eqz p1, :cond_22

    .line 8564
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p1

    :goto_26
    if-eqz p1, :cond_2d

    .line 8565
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    .line 8566
    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    .line 8567
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p6

    move-object/from16 v7, p8

    .line 7727
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v3, "activities"

    .line 7728
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    const-string v3, "a"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_d2

    :cond_20
    const-string v3, "lastanr"

    .line 7730
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 7731
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    goto/16 :goto_e1

    :cond_2f
    const-string v3, "lastanr-traces"

    .line 7732
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 7733
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V

    goto/16 :goto_e1

    :cond_3e
    const-string/jumbo v3, "starter"

    .line 7734
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 7735
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_e1

    :cond_4e
    const-string v3, "containers"

    .line 7736
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 7737
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivityContainersLocked(Ljava/io/PrintWriter;)V

    goto/16 :goto_e1

    :cond_5d
    const-string/jumbo v3, "recents"

    .line 7738
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    const-string/jumbo v3, "r"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    goto :goto_c0

    :cond_70
    const-string/jumbo v3, "top-resumed"

    .line 7742
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 7743
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpTopResumedActivityLocked(Ljava/io/PrintWriter;)V

    goto/16 :goto_e1

    .line 7746
    :cond_80
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isMultiTaskingDumpsysCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    const-string v1, "MULTI TASKING DUMPSYS (dumpsys activity multitasking)"

    .line 7747
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7748
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmMWControllers(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/IController;

    const-string v3, "  "

    .line 7749
    invoke-interface {v1, p3, v3}, Lcom/android/server/wm/IController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_95

    .line 7751
    :cond_a7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v1, :cond_e1

    .line 7752
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_b5

    const-string v1, "-------------------------------------------------------------------------------"

    .line 7754
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7756
    :cond_b5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_e1

    move-object v1, p2

    .line 7757
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/app/AppLockPolicy;->dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z

    goto :goto_e1

    .line 7739
    :cond_c0
    :goto_c0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 7740
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p3, p6, v7}, Lcom/android/server/wm/RecentTasks;->dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V

    goto :goto_e1

    :cond_d2
    :goto_d2
    move-object v1, p2

    .line 7729
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 7761
    :cond_e1
    :goto_e1
    monitor-exit v8
    :try_end_e2
    .catchall {:try_start_b .. :try_end_e2} :catchall_e6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit v8
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZI)Z
    .registers 20

    move-object v0, p0

    .line 7960
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZI)Z

    move-result v0

    return v0
.end method

.method public dumpForOom(Ljava/io/PrintWriter;)V
    .registers 5

    .line 7966
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHomeProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPreviousProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7969
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_56

    .line 7970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHeavyWeightProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7972
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5b
    move-exception p0

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpForProcesses(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IZZI)Z
    .registers 16

    .line 7768
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7769
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    if-eqz p4, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7770
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_1d
    if-eqz p6, :cond_23

    .line 7772
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 7775
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHomeProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7777
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6d

    if-eqz p4, :cond_4f

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7778
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_4f
    if-eqz p6, :cond_55

    .line 7780
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 7783
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPreviousProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6d
    if-eqz p3, :cond_9b

    .line 7785
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_83

    if-eqz p4, :cond_83

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7786
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 7787
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  mPreviousProcessVisibleTime: "

    .line 7788
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7789
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 7790
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7792
    :cond_9b
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_cd

    if-eqz p4, :cond_af

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7793
    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    :cond_af
    if-eqz p6, :cond_b5

    .line 7795
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    .line 7798
    :cond_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHeavyWeightProcess: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cd
    if-nez p4, :cond_f2

    .line 7801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGlobalConfiguration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7802
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v2, "  "

    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_f2
    const/4 v0, 0x1

    if-eqz p3, :cond_17e

    .line 7805
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-nez p4, :cond_115

    if-eqz p3, :cond_115

    .line 7807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mConfigWillChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7809
    :cond_115
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_17e

    .line 7812
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v1

    :goto_134
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7813
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7814
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p4, :cond_159

    .line 7815
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_159

    goto :goto_134

    :cond_159
    if-nez v2, :cond_161

    const-string v2, "  mScreenCompatPackages:"

    .line 7819
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v0

    .line 7822
    :cond_161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_134

    :cond_17e
    if-nez p4, :cond_23a

    .line 7828
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7829
    invoke-static {p8}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7828
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7830
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mSleepTokens="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p8, p8, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7831
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p3, :cond_1e8

    .line 7832
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mRunningVoice="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7833
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mVoiceWakeLock"

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7835
    :cond_1e8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mSleeping="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p8}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result p8

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7836
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "  mShuttingDown="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p8, " mTestPssMode="

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7837
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "  mVrController="

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p7, p7, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7839
    :cond_23a
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz p3, :cond_245

    const-string p7, "  "

    .line 7840
    invoke-virtual {p3, p2, p7, v0}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 7842
    :cond_245
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_2c5

    move p3, v1

    move p7, p3

    .line 7844
    :goto_251
    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p8}, Landroid/util/SparseArray;->size()I

    move-result p8

    if-ge p3, p8, :cond_2c5

    .line 7845
    iget-object p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p8, p8, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p8, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/util/ArrayMap;

    move v2, v1

    .line 7846
    :goto_266
    invoke-virtual {p8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c2

    if-eqz p4, :cond_27e

    .line 7848
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p5, :cond_2bf

    :cond_27e
    if-eqz p6, :cond_284

    .line 7850
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move p6, v1

    :cond_284
    if-nez p7, :cond_28c

    const-string p7, "  mAllowAppSwitchUids:"

    .line 7854
    invoke-virtual {p2, p7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p7, v0

    :cond_28c
    const-string v3, "    User "

    .line 7857
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7858
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": Type "

    .line 7859
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7860
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " = "

    .line 7861
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7862
    invoke-virtual {p8, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 7863
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_266

    :cond_2c2
    add-int/lit8 p3, p3, 0x1

    goto :goto_251

    :cond_2c5
    if-nez p4, :cond_343

    .line 7869
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz p3, :cond_2f1

    .line 7870
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mController="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " mControllerIsAMonkey="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7874
    :cond_2f1
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    if-eqz p3, :cond_30f

    .line 7875
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mControllerDescription: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7878
    :cond_30f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mGoingToSleepWakeLock="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7879
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  mLaunchingActivityWakeLock="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7883
    :cond_343
    monitor-exit p1
    :try_end_344
    .catchall {:try_start_5 .. :try_end_344} :catchall_348

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p6

    :catchall_348
    move-exception p0

    .line 7884
    :try_start_349
    monitor-exit p1
    :try_end_34a
    .catchall {:try_start_349 .. :try_end_34a} :catchall_348

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public enableDexDisplay(III)I
    .registers 4

    const-string p0, "ActivityTaskManager"

    const-string p1, "disableDexDisplay: failed, reason=feature_off"

    .line 8389
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public enableScreenAfterBoot(Z)V
    .registers 4

    .line 7134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/EventLogTags;->writeBootProgressEnableScreen(J)V

    .line 7135
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 7136
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7137
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 7138
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7141
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2c
    move-exception p0

    .line 7138
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public finishHeavyWeightApp()V
    .registers 3

    .line 7099
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7100
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_15

    .line 7101
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->finishActivities()V

    .line 7103
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 7105
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .registers 4

    .line 8029
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8030
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 8031
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public flushRecentTasks()V
    .registers 1

    .line 8111
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->flush()V

    return-void
.end method

.method public getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 2

    .line 7292
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7293
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 7294
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_1b
    move-exception p1

    .line 7295
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .line 8335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8336
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mgetAppTasks(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 8337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_10
    if-ge p2, p1, :cond_27

    .line 8339
    new-instance v1, Landroid/app/ActivityManager$AppTask;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_27
    return-object v0
.end method

.method public getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .registers 3

    .line 8269
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    return-object p0
.end method

.method public getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .registers 15

    .line 7301
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7302
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    const-string p0, "ActivityTaskManager"

    const-string p1, "getApplicationThreadForTopActivity failed: Requested task not found"

    .line 7305
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7307
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7309
    :cond_20
    :try_start_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7310
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7315
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_38

    .line 7316
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_38
    if-nez p2, :cond_68

    .line 7319
    :try_start_3a
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 7320
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7321
    new-instance p2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7322
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 7323
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;-><init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3a .. :try_end_64} :catchall_a2

    .line 7321
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p2

    .line 7326
    :cond_68
    :goto_68
    :try_start_68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9d

    .line 7327
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7328
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    if-ne v4, p2, :cond_9a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 7329
    new-instance p2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    iget-object v7, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7330
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 7331
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v11

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;-><init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_68 .. :try_end_96} :catchall_a2

    .line 7329
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p2

    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 7334
    :cond_9d
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_a2
    move-exception p0

    .line 7335
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getForegroundTaskId(I)I
    .registers 2

    .line 8220
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getForegroundTaskId(I)I

    move-result p0

    return p0
.end method

.method public getHomeActivityForUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 6833
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6834
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 6835
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_16

    .line 6836
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_1b
    move-exception p0

    .line 6837
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .registers 2

    .line 7367
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7368
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_13
    move-exception p0

    .line 7369
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 28

    move-object v0, p0

    .line 7343
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7344
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_2c
    move-exception v0

    .line 7346
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .registers 2

    .line 8169
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8170
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_19
    move-exception p0

    .line 8171
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getMostRecentTaskFromBackground()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 6

    .line 8307
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 8309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3e

    const/4 v1, 0x0

    .line 8310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8316
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8320
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v3, 0x2

    .line 8317
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 8321
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 8323
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 8325
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v3, v4, :cond_2a

    move-object v2, v1

    :cond_3d
    return-object v2

    :cond_3e
    const-string p0, "ActivityTaskManager"

    const-string v0, "No running task found!"

    .line 8312
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getRealActivityForTaskId(I)Landroid/content/ComponentName;
    .registers 2

    .line 8231
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getRealActivityForTaskId(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .registers 4

    .line 7351
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7352
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p0, 0x0

    .line 7354
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 7356
    :cond_14
    :try_start_14
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v1, :cond_21

    .line 7357
    new-instance v1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 7361
    :cond_21
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_28
    move-exception p0

    .line 7362
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTaskSnapshotBlocking(IZ)Landroid/window/TaskSnapshot;
    .registers 3

    .line 8187
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I
    .registers 4

    .line 8346
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8347
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8348
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 8347
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 8349
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopApp()Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 7985
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public getTopProcessState()I
    .registers 2

    .line 7081
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x2

    return p0

    .line 7086
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    return p0
.end method

.method public getTopVisibleActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation

    .line 6850
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6851
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopVisibleActivities()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_15
    move-exception p0

    .line 6852
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "getUriPermissionOwnerForActivity"

    .line 8177
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 8178
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8179
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_1d

    .line 8180
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p1

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_22
    move-exception p1

    .line 8181
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public goodToChangeMode(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z
    .registers 21

    move-object v0, p0

    .line 8057
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8058
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v3, :cond_15

    .line 8059
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_15
    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    .line 8063
    :try_start_1f
    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_28
    .catchall {:try_start_1f .. :try_end_23} :catchall_3f

    if-nez v0, :cond_33

    move-object/from16 v11, p8

    goto :goto_33

    .line 8068
    :catch_28
    :try_start_28
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 8069
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 8071
    :cond_33
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v11, :cond_3e

    .line 8073
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0

    :cond_3e
    return v2

    :catchall_3f
    move-exception v0

    .line 8071
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public handleAppDied(Lcom/android/server/wm/WindowProcessController;ZLjava/lang/Runnable;)V
    .registers 7

    .line 7455
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7458
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 7460
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7461
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 7462
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "Focused Freeform task dying"

    .line 7463
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    .line 7467
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_75

    .line 7471
    :try_start_2d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->handleAppDied()Z

    move-result v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_6c

    .line 7473
    :try_start_31
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    if-nez p2, :cond_61

    if-eqz v1, :cond_61

    .line 7477
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_75

    .line 7479
    :try_start_41
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-result p2

    if-nez p2, :cond_54

    .line 7484
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_5a

    .line 7488
    :cond_54
    :try_start_54
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_61

    :catchall_5a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7489
    throw p1

    .line 7491
    :cond_61
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_75

    .line 7492
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 7493
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_6b
    return-void

    :catchall_6c
    move-exception p1

    .line 7473
    :try_start_6d
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 7474
    throw p1

    :catchall_75
    move-exception p0

    .line 7491
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_75

    throw p0
.end method

.method public hasPackageTask(ILjava/lang/String;I)Z
    .registers 4

    .line 8241
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasPackageTask(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasResumedActivity(I)Z
    .registers 2

    .line 6857
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasResumedActivity(I)Z

    move-result p0

    return p0
.end method

.method public hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 4

    .line 8275
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBaseOfLockedTask(Ljava/lang/String;)Z
    .registers 3

    .line 8212
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8213
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_17
    move-exception p0

    .line 8214
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isCallerRecents(I)Z
    .registers 2

    .line 6980
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 7

    .line 7398
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7399
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 7400
    monitor-exit v0

    return v3

    :cond_e
    const/4 v4, 0x1

    if-ne v2, v4, :cond_23

    .line 7402
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_23

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 7403
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7404
    monitor-exit v0

    return v4

    .line 7406
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_33

    iget-object p0, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_33

    move v3, v4

    :cond_33
    monitor-exit v0

    return v3

    :catchall_35
    move-exception p0

    .line 7408
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 4

    .line 7045
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isRecentsComponentHomeActivity(I)Z
    .registers 2

    .line 6985
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result p0

    return p0
.end method

.method public isShuttingDown()Z
    .registers 2

    .line 7116
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7117
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 7118
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isSleeping()Z
    .registers 1

    .line 7111
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result p0

    return p0
.end method

.method public isUidForeground(I)Z
    .registers 2

    .line 8192
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result p0

    return p0
.end method

.method public loadRecentTasksForUser(I)V
    .registers 4

    .line 8095
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8096
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 8098
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageConfigPersister;->loadUserPackages(I)V

    .line 8099
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public minimizeAllTasks(IZ)V
    .registers 4

    .line 8246
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8247
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 8248
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public moveTaskToBack(IZLandroid/os/Bundle;)Z
    .registers 4

    .line 8381
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->moveTaskToBack(IZLandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public notifyActiveVoiceInteractionServiceChanged(Landroid/content/ComponentName;)V
    .registers 3

    .line 7001
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7002
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 7003
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyDreamStateChanged(Z)V
    .registers 3

    .line 7008
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7009
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmDreaming(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 7010
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyLockedProfile(II)V
    .registers 8

    .line 7669
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_56

    if-eqz v0, :cond_4e

    .line 7676
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_48

    .line 7679
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 7684
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "notifyLockedProfile"

    .line 7686
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->startHomeActivity(ILjava/lang/String;)Z

    .line 7689
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lockAllProfileTasks(I)V
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_43

    .line 7692
    :cond_3b
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7694
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_43
    move-exception p0

    .line 7692
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7693
    throw p0

    :catchall_48
    move-exception p0

    .line 7694
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 7670
    :cond_4e
    :try_start_4e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only privileged app can call notifyLockedProfile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_56} :catch_56

    :catch_56
    move-exception p0

    .line 7673
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Fail to check is caller a privileged app"

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public notifyWakingUp()V
    .registers 6

    .line 8281
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8283
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8284
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 8283
    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 8285
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onCleanUpApplicationRecord(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 7068
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7069
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_10

    .line 7070
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 7072
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p1, v1, :cond_1a

    .line 7073
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 7075
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onForceStopPackage(Ljava/lang/String;ZZI)Z
    .registers 13

    .line 7591
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7593
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v1, :cond_14

    const/4 p0, 0x0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_14
    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 7594
    :try_start_1a
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/RootWindowContainer;->finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_23
    move-exception p0

    .line 7600
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 8022
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8023
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 8024
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 5

    .line 6843
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6844
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 6845
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;Z)V
    .registers 4

    .line 7241
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7242
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->handlePackageAddedLocked(Ljava/lang/String;Z)V

    .line 7243
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5

    .line 7223
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7224
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->handlePackageDataClearedLocked(Ljava/lang/String;)V

    .line 7225
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWarnings;->onPackageDataCleared(Ljava/lang/String;)V

    .line 7226
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 7227
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 7248
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 7250
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackageUninstalled(Ljava/lang/String;I)V
    .registers 5

    .line 7232
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7233
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWarnings;->onPackageUninstalled(Ljava/lang/String;)V

    .line 7234
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->handlePackageUninstalledLocked(Ljava/lang/String;)V

    .line 7235
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->onPackageUninstall(Ljava/lang/String;I)V

    .line 7236
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 5

    .line 8104
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8105
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V

    .line 8106
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessAdded(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 7052
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7053
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 7054
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V
    .registers 7

    .line 7198
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7199
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowProcessControllerMap;->put(ILcom/android/server/wm/WindowProcessController;)V

    .line 7202
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 7203
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 7204
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "ActivityTaskManager"

    .line 7205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7211
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_50
    move-exception p0

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 7060
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7061
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 7062
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public onProcessUnMapped(I)V
    .registers 3

    .line 7216
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7217
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->remove(I)V

    .line 7218
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onUidActive(II)V
    .registers 3

    .line 8037
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MirrorActiveUids;->onUidActive(II)V

    return-void
.end method

.method public onUidInactive(I)V
    .registers 2

    .line 8043
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->onUidInactive(I)V

    return-void
.end method

.method public onUidProcStateChanged(II)V
    .registers 3

    .line 8049
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MirrorActiveUids;->onUidProcStateChanged(II)V

    return-void
.end method

.method public onUserStopped(I)V
    .registers 4

    .line 7037
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7038
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks;->unloadUserDataFromMemoryLocked(I)V

    .line 7039
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7040
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public preBindApplication(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 7616
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 7617
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V

    .line 7618
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V
    .registers 6

    .line 8292
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8293
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x5

    if-gt p1, v1, :cond_27

    if-ltz p1, :cond_27

    .line 8301
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8302
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8297
    :cond_27
    :try_start_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range of valid ids ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8294
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate id provided: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6b
    move-exception p0

    .line 8302
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerRemoteAppControllerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 2

    return-void
.end method

.method public registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V
    .registers 2

    .line 6975
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRecentTasksByPackageName(Ljava/lang/String;I)V
    .registers 4

    .line 8081
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8082
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->removeTasksByPackageName(Ljava/lang/String;I)V

    .line 8083
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public removeUser(I)V
    .registers 4

    .line 8007
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8008
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->removeUser(I)V

    .line 8009
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageConfigPersister;->removeUser(I)V

    .line 8010
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public restartTaskActivityProcessIfVisible(ILjava/lang/String;)V
    .registers 6

    .line 8354
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8355
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    .line 8357
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_2e

    const-string p0, "ActivityTaskManager"

    .line 8359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restart Activity. No task found for id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8360
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8363
    :cond_2e
    :try_start_2e
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_5c

    const-string p0, "ActivityTaskManager"

    .line 8369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restart Activity. No Activity found for package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in task: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8371
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8374
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 8375
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_64
    move-exception p0

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public resumeTopActivities(Z)V
    .registers 4

    .line 7605
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7606
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    if-eqz p1, :cond_18

    .line 7608
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 7610
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public scheduleDestroyAllActivities(IILjava/lang/String;)V
    .registers 6

    .line 7998
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7999
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 8000
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->scheduleDestroyAllActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 8001
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public scheduleDestroyAllActivities(Ljava/lang/String;)V
    .registers 3

    .line 7990
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7991
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 7992
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15

    .line 7264
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7265
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 7266
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_15

    goto :goto_3a

    .line 7269
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7272
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p6, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v7

    .line 7274
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 7275
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 7276
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 7267
    :cond_3a
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3f
    move-exception p0

    .line 7269
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public sendToggleFreeformTransaction(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 3

    .line 6868
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6869
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/wm/ActivityTaskManagerService;[I)V

    .line 6870
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAllowAppSwitches(Ljava/lang/String;II)V
    .registers 6

    .line 7015
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 7018
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7019
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_33

    if-gez p2, :cond_27

    .line 7022
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7024
    :cond_27
    :try_start_27
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 7025
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_33
    if-gez p2, :cond_39

    .line 7028
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 7030
    :cond_39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7032
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 2

    .line 6863
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmBackgroundActivityStartCallback(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    return-void
.end method

.method public setCompanionAppUids(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 8204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8205
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8206
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDeviceOwnerUid(I)V
    .registers 3

    .line 8197
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8198
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setDeviceOwnerUid(I)V

    .line 8199
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setFocusedActivity(Landroid/os/IBinder;)V
    .registers 5

    .line 6961
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6962
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    const-string/jumbo p1, "setFocusedActivity"

    .line 6967
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 6968
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 6970
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6964
    :cond_23
    :try_start_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusedActivity: No activity record matching token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3b
    move-exception p0

    .line 6970
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfileApp(Ljava/lang/String;)V
    .registers 3

    .line 8148
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8149
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 8150
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfileProc(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 8155
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8156
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 8157
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .registers 3

    .line 8162
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8163
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 8164
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setVr2dDisplayId(I)V
    .registers 10

    .line 6953
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x6419cb19

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6954
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6955
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 6956
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public showRescuePartyDialog()V
    .registers 3

    .line 8574
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStrictModeViolationDialog()Z
    .registers 3

    .line 7148
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7149
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_26
    move-exception p0

    .line 7150
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public showSystemReadyErrorDialogsIfNeeded()V
    .registers 4

    .line 7155
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7157
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->hasSystemUidErrors()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "ActivityTaskManager"

    const-string v2, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 7158
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7160
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_28
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_46

    .line 7177
    :catch_28
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {}, Landroid/os/Build;->isBuildConsistent()Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "ActivityTaskManager"

    const-string v2, "Build fingerprint is not consistent, warning user"

    .line 7178
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7179
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7193
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shuttingDown(ZI)Z
    .registers 6

    .line 7123
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7124
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 7125
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->prepareForShutdown()V

    .line 7126
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    .line 7127
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 7128
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->shutdownLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_2a
    move-exception p0

    .line 7129
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
    .registers 20

    move-object v0, p0

    move-object/from16 v4, p4

    const-string v1, "intents"

    .line 6876
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6877
    array-length v1, v4

    new-array v5, v1, [Ljava/lang/String;

    .line 6883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    move v6, v3

    .line 6886
    :goto_11
    :try_start_11
    array-length v7, v4

    if-ge v6, v7, :cond_27

    .line 6887
    aget-object v7, v4, v6

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6888
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 6891
    :cond_27
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2b} :catch_3b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_36

    const-wide/32 v7, 0x10000000

    move-object v9, p1

    move/from16 v10, p3

    :try_start_31
    invoke-interface {v6, p1, v7, v8, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_3e
    .catchall {:try_start_31 .. :try_end_35} :catchall_36

    goto :goto_3e

    :catchall_36
    move-exception v0

    .line 6896
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6897
    throw v0

    :catch_3b
    move-object v9, p1

    move/from16 v10, p3

    .line 6896
    :catch_3e
    :goto_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v3

    .line 6899
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v6, 0x0

    .line 6902
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v8, p3

    move v9, v11

    move-object v10, v12

    move v11, v13

    .line 6899
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 30

    move-object/from16 v0, p0

    .line 6913
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 6914
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I
    .registers 23

    move-object v0, p0

    .line 6939
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6941
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    .line 6939
    invoke-static/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mstartActivityAsUser(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 39

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    .line 6927
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 6928
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    .line 7699
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 7701
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_3d

    const/high16 v3, 0x10800000

    .line 7704
    :try_start_14
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1f

    .line 7706
    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_23

    :cond_1f
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 7707
    :goto_23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_38

    .line 7710
    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7712
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_38
    move-exception p0

    .line 7710
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7711
    throw p0

    :catchall_3d
    move-exception p0

    .line 7712
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startHomeActivity(ILjava/lang/String;)Z
    .registers 5

    .line 7374
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7375
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_16
    move-exception p0

    .line 7376
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 4

    .line 7390
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7391
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnAllDisplays(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 7392
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 13

    .line 7382
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7383
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1a
    move-exception p0

    .line 7385
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startRemoteActivityAsCaller(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;ILandroid/os/Bundle;)I
    .registers 5

    .line 8439
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    .line 8440
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const/4 p2, 0x0

    if-eq p0, p1, :cond_26

    .line 8441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Pid "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cannot startRemoteActivityAsCaller"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return p2
.end method

.method public switchUser(ILcom/android/server/am/UserState;)Z
    .registers 4

    .line 8015
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8016
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 8017
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterRemoteAppControllerCallbacks(Lcom/android/server/wm/RemoteAppControllerCallbacks;)V
    .registers 2

    return-void
.end method

.method public updateTopComponentForFactoryTest()V
    .registers 7

    .line 7413
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7414
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14

    .line 7415
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7417
    :cond_14
    :try_start_14
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.FACTORY_TEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    .line 7418
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 7421
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7422
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7423
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_48

    .line 7424
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "android.intent.action.FACTORY_TEST"

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 7425
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    .line 7426
    new-instance v5, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    move-object v1, v2

    goto :goto_67

    .line 7429
    :cond_48
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040518

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_67

    .line 7433
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040517

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_67
    if-nez v1, :cond_6e

    .line 7437
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_14 .. :try_end_6a} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7440
    :cond_6e
    :try_start_6e
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 7441
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    .line 7442
    iput-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    .line 7443
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7448
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_85
    move-exception p0

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateUserConfiguration()V
    .registers 9

    .line 8123
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8124
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 8125
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v6

    .line 8126
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8127
    invoke-static {v3}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v3

    .line 8126
    invoke-static {v1, v2, v6, v3}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    .line 8128
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mupdateConfigurationLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 8131
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public writeActivitiesToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 7717
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7719
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 7721
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V
    .registers 13

    .line 7890
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-wide v1, 0x10900000001L

    if-nez p2, :cond_ae

    .line 7892
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const-wide v4, 0x10b00000013L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7893
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2f

    const-wide v4, 0x10800000015L

    .line 7895
    iget-boolean v3, v3, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7897
    :cond_2f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V

    .line 7898
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p3, :cond_5d

    const-wide p3, 0x10b0000001cL

    .line 7899
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 7901
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 7902
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7901
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7903
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7905
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7907
    :cond_5d
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    const-wide v3, 0x10b0000001dL

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/VrController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7909
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz p3, :cond_92

    const-wide p3, 0x10b00000025L

    .line 7910
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 7911
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 7912
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7911
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10800000002L

    .line 7913
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7914
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7916
    :cond_92
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v3, 0x10b0000002fL

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7917
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide v3, 0x10b00000030L

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7921
    :cond_ae
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_ce

    if-eqz p2, :cond_c2

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object p3, p3, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7922
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ce

    .line 7923
    :cond_c2
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b0000000fL

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7926
    :cond_ce
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_fc

    if-eqz p2, :cond_e2

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object p3, p3, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7927
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_fc

    .line 7928
    :cond_e2
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b00000010L

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide p3, 0x10300000011L

    .line 7929
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J

    move-result-wide v3

    invoke-virtual {p1, p3, p4, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7932
    :cond_fc
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_11c

    if-eqz p2, :cond_110

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object p3, p3, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 7933
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11c

    .line 7934
    :cond_110
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    const-wide v3, 0x10b00000012L

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/wm/WindowProcessController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7938
    :cond_11c
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p3}, Lcom/android/server/wm/CompatModePackages;->getPackages()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12c
    :goto_12c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_168

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 7939
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7940
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p2, :cond_150

    .line 7941
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    :cond_150
    const-wide v4, 0x20b00000016L

    .line 7942
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7943
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000002L

    .line 7944
    invoke-virtual {p1, v6, v7, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7945
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_12c

    .line 7949
    :cond_168
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz p0, :cond_177

    const-wide p2, 0x10b0000001fL

    const/4 p4, 0x1

    .line 7950
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppTimeTracker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 7953
    :cond_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_5 .. :try_end_178} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17c
    move-exception p0

    :try_start_17d
    monitor-exit v0
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
