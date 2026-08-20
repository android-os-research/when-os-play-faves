.class public Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->preloadBoosterAppsFromIpm(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$packageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .registers 3

    .line 22181
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 22184
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 22185
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;->addAllowlistList(Z)V

    goto :goto_24

    .line 22186
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v0

    if-nez v0, :cond_24

    .line 22187
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->removeAllowlistByBUB()V

    .line 22190
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 22191
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getmLruProcesses()Ljava/util/ArrayList;

    move-result-object v2

    .line 22192
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_3a
    if-ltz v3, :cond_a1

    .line 22193
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 22194
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/DynamicHiddenApp;->appIsPickedProcess(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_56

    const/4 v6, -0x1

    .line 22195
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 22197
    :cond_56
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-eqz v6, :cond_7b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_&_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 22198
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType(I)V

    .line 22201
    :cond_7b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-nez v6, :cond_89

    .line 22202
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_9e

    .line 22203
    :cond_89
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 22204
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    :cond_9e
    :goto_9e
    add-int/lit8 v3, v3, -0x1

    goto :goto_3a

    .line 22207
    :cond_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_29 .. :try_end_a2} :catchall_e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 22208
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/am/DynamicHiddenApp;->updatePickedProcessLists(Ljava/util/List;)V

    .line 22210
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$packageNames:Ljava/util/List;

    if-nez v0, :cond_c5

    .line 22211
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/DynamicHiddenApp;->setAllowListCleared(Z)V

    const-string p0, "ActivityManager"

    const-string v0, "ALLOWLIST set in bootupbooster"

    .line 22212
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 22213
    :cond_c5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->IsAllowListCleared()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 22214
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/am/DynamicHiddenApp;->setAllowListCleared(Z)V

    const-string p0, "ActivityManager"

    const-string v0, "ALLOWLIST clear in bootupbooster"

    .line 22215
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    return-void

    :catchall_e2
    move-exception p0

    .line 22207
    :try_start_e3
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
