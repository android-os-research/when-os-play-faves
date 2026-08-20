.class public final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UiHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 1968
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1969
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1974
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_108

    const/4 v2, 0x2

    if-eq v0, v2, :cond_fb

    const/4 v2, 0x6

    if-eq v0, v2, :cond_c4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_49

    const/16 v1, 0x44

    if-eq v0, v1, :cond_42

    const/16 v1, 0x46

    if-eq v0, v1, :cond_37

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_21

    goto/16 :goto_114

    .line 2027
    :cond_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2028
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2029
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ProcessList;->dispatchProcessDied(II)V

    goto/16 :goto_114

    .line 2020
    :cond_2e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->dispatchProcessesChanged()V

    goto/16 :goto_114

    .line 2033
    :cond_37
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->dispatchOomAdjObserver(Ljava/lang/String;)V

    goto/16 :goto_114

    .line 2036
    :cond_42
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->pushTempAllowlist()V

    goto/16 :goto_114

    .line 1984
    :cond_49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 1985
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_52
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const-string v1, "app"

    .line 1986
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_6c

    const-string p0, "ActivityManager"

    const-string p1, "App not found when showing strict mode dialog."

    .line 1988
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_114

    .line 1991
    :cond_6c
    :try_start_6c
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->hasViolationDialogs()Z

    move-result v2

    if-eqz v2, :cond_93

    const-string p0, "ActivityManager"

    .line 1992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App already has strict mode dialog: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_93
    :try_start_93
    const-string/jumbo v2, "result"

    .line 1995
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppErrorResult;

    .line 1996
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1997
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/ErrorDialogController;->showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V

    goto :goto_b4

    :cond_b0
    const/4 v1, 0x0

    .line 2001
    invoke-virtual {p1, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2003
    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_93 .. :try_end_b5} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2004
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_114

    :catchall_be
    move-exception p0

    .line 2003
    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2007
    :cond_c4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_c9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2008
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 2009
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_e7

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasWaitedForDebugger()Z

    move-result p1

    if-nez p1, :cond_f0

    .line 2011
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->showDebugWaitingDialogs()V

    .line 2012
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setWaitedForDebugger(Z)V

    goto :goto_f0

    .line 2015
    :cond_e7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearWaitingDialog()V

    .line 2017
    :cond_f0
    :goto_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_c9 .. :try_end_f1} :catchall_f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_114

    :catchall_f5
    move-exception p0

    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1980
    :cond_fb
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 1981
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_114

    .line 1976
    :cond_108
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 1977
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    :goto_114
    return-void
.end method
