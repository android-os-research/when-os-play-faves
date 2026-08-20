.class public Lcom/android/server/am/StrictModeViolationDialog$1;
.super Landroid/os/Handler;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StrictModeViolationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/StrictModeViolationDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/StrictModeViolationDialog;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmService(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 117
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 118
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    .line 120
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 121
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmResult(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 125
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :catchall_38
    move-exception p0

    .line 120
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
