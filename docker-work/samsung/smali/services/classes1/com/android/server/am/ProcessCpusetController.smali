.class public Lcom/android/server/am/ProcessCpusetController;
.super Ljava/lang/Object;
.source "ProcessCpusetController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessCpusetController"

.field public static mController:Lcom/android/server/am/ProcessCpusetController;


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mSystemPackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mSystemPackage:Ljava/lang/String;

    return-void
.end method

.method public static getController()Lcom/android/server/am/ProcessCpusetController;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    return-object v0
.end method

.method public static getController(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessCpusetController;
    .registers 1

    .line 71
    invoke-static {p0}, Lcom/android/server/am/ProcessCpusetController;->prepareController(Lcom/android/server/am/ActivityManagerService;)V

    .line 72
    invoke-static {}, Lcom/android/server/am/ProcessCpusetController;->getController()Lcom/android/server/am/ProcessCpusetController;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized prepareController(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    const-class v0, Lcom/android/server/am/ProcessCpusetController;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    if-nez v1, :cond_13

    if-nez p0, :cond_a

    goto :goto_13

    .line 63
    :cond_a
    new-instance v1, Lcom/android/server/am/ProcessCpusetController;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCpusetController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 64
    monitor-exit v0

    return-void

    .line 62
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public resetAbnormalList()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 77
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_2d

    .line 78
    iget-object v2, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 79
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setAbnormalStatus(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 82
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_slowdown"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 83
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setFGSFilter(IZ)Z
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 114
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 115
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setFGSFilterStatus(Z)V

    .line 117
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "updateOomAdj_fgsfilter"

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    .line 120
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setProcessSlowdown(IZ)Z
    .registers 8

    .line 90
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 91
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_14
    if-ltz v1, :cond_30

    .line 92
    iget-object v3, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 93
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p1, :cond_2d

    .line 94
    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    goto :goto_31

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_30
    const/4 v1, 0x0

    .line 98
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_70

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v1, :cond_54

    .line 100
    sget-object p0, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slowdown: pid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is nonexistent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_54
    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessStateRecord;->setAbnormalStatus(Z)V

    .line 104
    iget-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_5a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 105
    iget-object p0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p2, "updateOomAdj_slowdown"

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 106
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_6a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_70
    move-exception p0

    .line 98
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
