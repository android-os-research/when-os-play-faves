.class public final Lcom/android/server/am/ErrorDialogController;
.super Ljava/lang/Object;
.source "ErrorDialogController.java"


# instance fields
.field public mAnrController:Landroid/app/AnrController;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mAnrDialogs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation
.end field

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mCrashDialogs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mViolationDialogs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StrictModeViolationDialog;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ABsEUCt2XojhUzaRyYI6sYJ5q_w(Lcom/android/server/am/ErrorDialogController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showDebugWaitingDialogs$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vkf0tocZxbQ1ZBsu-Au2YBCGSko(Lcom/android/server/am/ErrorDialogController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showCrashDialogs$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$akIPjHsq7JjW-pca5C_d_qhgePc(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 264
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 265
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method

.method private synthetic lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$showCrashDialogs$1()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 179
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 180
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v1, :cond_16

    .line 182
    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    .line 180
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method private synthetic lambda$showDebugWaitingDialogs$2()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 220
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 221
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz p0, :cond_11

    .line 223
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_11
    return-void

    :catchall_12
    move-exception p0

    .line 221
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method


# virtual methods
.method public clearAllErrorDialogs()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearWaitingDialog()V

    return-void
.end method

.method public clearAnrDialogs()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 128
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public clearCrashDialogs()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs(Z)V

    return-void
.end method

.method public clearCrashDialogs(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    .line 118
    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_f
    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-void
.end method

.method public clearViolationDialogs()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 138
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    return-void
.end method

.method public clearWaitingDialog()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_5

    return-void

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    return-void
.end method

.method public forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_14

    .line 164
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public getAnrController()Landroid/app/AnrController;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-object p0
.end method

.method public getAnrDialogs()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object p0
.end method

.method public getCrashDialogs()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object p0
.end method

.method public final getDisplayContexts(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_10

    .line 251
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 254
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz p1, :cond_28

    .line 255
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz p1, :cond_23

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_25

    .line 257
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 255
    :goto_25
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    return-object v0
.end method

.method public hasAnrDialogs()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasCrashDialogs()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasDebugWaitingDialog()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasViolationDialogs()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnrController(Landroid/app/AnrController;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_19
    if-ltz v1, :cond_30

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 194
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 196
    :cond_30
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_29

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 174
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 176
    :cond_29
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDebugWaitingDialogs()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 215
    new-instance v1, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 217
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_2b

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 205
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 208
    :cond_2b
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
