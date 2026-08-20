.class public Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
.super Ljava/lang/Object;
.source "AppPrelaunchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprelauncher/AppPrelaunchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrelaunchedApp"
.end annotation


# instance fields
.field public final DEBUG:Z

.field public currentStage:I

.field public deathReason:Ljava/lang/String;

.field public displayId:I

.field public final finalStage:I

.field public isBeingPrelaunched:Z

.field public isKilled:Z

.field public final packageName:Ljava/lang/String;

.field public pid:I

.field public final prelaunchedTimeNs:J

.field public final processName:Ljava/lang/String;

.field public final selfStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final spegMarkerFileMisc:Ljava/io/File;

.field public final spegMarkerFilePkg:Ljava/io/File;

.field public final taskIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V
    .registers 8

    .line 1073
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    const/4 p1, -0x1

    .line 1055
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->pid:I

    .line 1062
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->displayId:I

    const/4 p1, 0x0

    .line 1064
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    .line 1065
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->selfStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1067
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    .line 1071
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->taskIds:Ljava/util/Set;

    .line 1074
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    .line 1075
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->processName:Ljava/lang/String;

    .line 1076
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    .line 1077
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/speg/speg."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFileMisc:Ljava/io/File;

    .line 1078
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "base.speg"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    .line 1079
    iput p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->finalStage:I

    .line 1080
    iput p4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    const/4 p1, 0x1

    .line 1081
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    return-void
.end method


# virtual methods
.method public addTaskId(I)Z
    .registers 2

    .line 1213
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->taskIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public createOrDeleteMarkerFiles(Z)Z
    .registers 11

    .line 1087
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v4, "PRELService"

    if-eqz p1, :cond_22

    .line 1093
    :try_start_c
    iget-object v5, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v8

    .line 1093
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v5
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_31

    goto :goto_4b

    :cond_22
    const/4 v5, 0x0

    .line 1098
    :try_start_23
    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1099
    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFileMisc:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2f} :catch_33
    .catchall {:try_start_23 .. :try_end_2f} :catchall_31

    and-int/2addr v5, v6

    goto :goto_4b

    :catchall_31
    move-exception p0

    goto :goto_84

    .line 1101
    :catch_33
    :try_start_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete marker files for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_31

    .line 1105
    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1108
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz p0, :cond_83

    .line 1109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_60

    const-string p1, "Creating"

    goto :goto_62

    :cond_60
    const-string p1, "Deleting"

    :goto_62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " marker files took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v2, v0

    .line 1110
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " us. Ret "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1109
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return v5

    .line 1105
    :goto_84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    throw p0
.end method

.method public getDeathReason()Ljava/lang/String;
    .registers 1

    .line 1261
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "Unknown"

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 1186
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->displayId:I

    return p0
.end method

.method public getKilled()Z
    .registers 1

    .line 1198
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isKilled:Z

    return p0
.end method

.method public getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    .registers 4

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRELService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1158
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 4

    .line 1170
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->pid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1171
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->pid:I

    .line 1173
    :cond_26
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->pid:I

    return p0
.end method

.method public getPrelaunched()Z
    .registers 1

    .line 1150
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    return p0
.end method

.method public getPrelaunchedTimeNs()J
    .registers 3

    .line 1268
    iget-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    return-wide v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getSelfStartCount()I
    .registers 1

    .line 1206
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->selfStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public declared-synchronized getStage()I
    .registers 2

    monitor-enter p0

    .line 1146
    :try_start_1
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUid()I
    .registers 1

    .line 1162
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 1182
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public incSelfStartCount()V
    .registers 1

    .line 1202
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->selfStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public isProcessAlive()Z
    .registers 4

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public removeTasks()V
    .registers 8

    .line 1218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v1

    monitor-enter v1

    .line 1221
    :try_start_a
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->taskIds:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_19

    .line 1223
    invoke-virtual {p0, v3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 1225
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_b8

    .line 1226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1227
    iget-object v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmRemoveTaskByIdCallback(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 1230
    iget-object v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmRemoveTaskByIdCallback(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5f

    .line 1231
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v2, "PRELService"

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1f

    :cond_5f
    const-string v4, "PRELService"

    .line 1235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task hasn\'t been removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_76
    const-string v4, "PRELService"

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task removed with am "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmAm(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1f

    :cond_9c
    if-eqz v2, :cond_b7

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v1

    monitor-enter v1

    .line 1245
    :try_start_a3
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_ad

    .line 1246
    invoke-virtual {p0, v3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 1248
    :cond_ad
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->taskIds:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1249
    monitor-exit v1

    goto :goto_b7

    :catchall_b4
    move-exception p0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_b4

    throw p0

    :cond_b7
    :goto_b7
    return-void

    :catchall_b8
    move-exception p0

    .line 1225
    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public setDeathReason(Ljava/lang/String;)V
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1256
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public setDisplayId(I)V
    .registers 2

    .line 1190
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->displayId:I

    return-void
.end method

.method public setKilled()V
    .registers 2

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isKilled:Z

    return-void
.end method

.method public setPrelaunched(Z)V
    .registers 2

    .line 1154
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    return-void
.end method

.method public declared-synchronized setStage(I)V
    .registers 6

    monitor-enter p0

    .line 1117
    :try_start_1
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    if-gt p1, v0, :cond_30

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "PRELService"

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to downgrade stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_62

    .line 1122
    :cond_2e
    monitor-exit p0

    return-void

    .line 1124
    :cond_30
    :try_start_30
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_62

    const/4 v0, 0x5

    if-lt p1, v0, :cond_5d

    const/4 p1, 0x0

    .line 1127
    :try_start_36
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mrestrictNetworkConnection(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_62

    goto :goto_57

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string v1, "PRELService"

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore network connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    :goto_57
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->createOrDeleteMarkerFiles(Z)Z

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setPrelaunched(Z)V

    .line 1135
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_62

    .line 1136
    monitor-exit p0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prelaunched app { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUidRestricted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deathReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getDeathReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_54
    const-string p0, ""

    :goto_56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
