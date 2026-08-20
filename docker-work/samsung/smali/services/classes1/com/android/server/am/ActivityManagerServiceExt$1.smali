.class public Lcom/android/server/am/ActivityManagerServiceExt$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .registers 2

    .line 1370
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1373
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1374
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1375
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2f

    .line 1377
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmDeXKillProcesses(Lcom/android/server/am/ActivityManagerServiceExt;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$mforceKillProcessesForDeXExitLocked(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1380
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
