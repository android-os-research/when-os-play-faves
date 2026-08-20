.class public final Lcom/android/server/am/ProcessList$ProcStartHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStartHandler"
.end annotation


# static fields
.field public static final MSG_PROCESS_DIED:I = 0x1

.field public static final MSG_PROCESS_KILL_TIMEOUT:I = 0x2


# instance fields
.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 2546
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2547
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2552
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_2e

    .line 2557
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2558
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2560
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2e

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2554
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ProcStartHandler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList;->-$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V

    :goto_2e
    return-void
.end method
