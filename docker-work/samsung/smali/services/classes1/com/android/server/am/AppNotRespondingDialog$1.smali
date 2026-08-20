.class public Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 196
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x13d

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_89

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_1b

    if-eq v0, v3, :cond_1b

    goto/16 :goto_98

    .line 207
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 208
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 209
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 211
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_41

    .line 212
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 212
    invoke-virtual {p1, v1, v5, v6, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 216
    :cond_41
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p1
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_83

    :try_start_4a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v3, 0x0

    .line 217
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 221
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 222
    monitor-exit p1
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_7d

    :try_start_59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 223
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 225
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActivityManagerInternal;->rescheduleAnrDialog(Ljava/lang/Object;)V

    .line 226
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_59 .. :try_end_79} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_98

    :catchall_7d
    move-exception p0

    .line 222
    :try_start_7e
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_83
    move-exception p0

    .line 226
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 202
    :cond_89
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :goto_98
    if-eqz v2, :cond_ac

    .line 232
    :try_start_9a
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9a .. :try_end_a3} :catch_a4

    goto :goto_ac

    :catch_a4
    move-exception p1

    const-string v0, "AppNotRespondingDialog"

    const-string v1, "bug report receiver dissappeared"

    .line 234
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :cond_ac
    :goto_ac
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
