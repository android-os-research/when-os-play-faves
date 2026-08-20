.class public Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 845
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 848
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 849
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v1, "JobScheduler"

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_1e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPackageName(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    .line 853
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 855
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_116

    if-eqz v1, :cond_f6

    if-eq v8, v3, :cond_f6

    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 859
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e9

    .line 862
    array-length p2, p1

    :goto_41
    if-ge v9, p2, :cond_b0

    aget-object v0, p1, v9

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 864
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_65

    const-string p2, "JobScheduler"

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package state change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_65
    :try_start_65
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 869
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 871
    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_77

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b0

    :cond_77
    if-eqz p1, :cond_97

    const-string p1, "JobScheduler"

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing jobs for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_97
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_9c} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_9c} :catch_b0

    .line 883
    :try_start_9c
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0xd

    const/4 v6, 0x7

    const-string v7, "app disabled"

    move-object v3, v1

    move v4, v8

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 887
    monitor-exit p1

    goto :goto_b0

    :catchall_aa
    move-exception p2

    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw p2
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_ad} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ac .. :try_end_ad} :catch_b0

    :cond_ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    .line 904
    :catch_b0
    :cond_b0
    :goto_b0
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_cf

    const-string p1, "JobScheduler"

    .line 905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Something in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " changed. Reevaluating controller states."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_cf
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 909
    :try_start_d4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_de
    if-ltz p2, :cond_f0

    .line 910
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v8}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_de

    .line 912
    :cond_f0
    monitor-exit p1

    goto/16 :goto_2e9

    :catchall_f3
    move-exception p0

    monitor-exit p1
    :try_end_f5
    .catchall {:try_start_d4 .. :try_end_f5} :catchall_f3

    throw p0

    :cond_f6
    const-string p0, "JobScheduler"

    .line 915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PACKAGE_CHANGED for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e9

    :cond_116
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 917
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    const-string p1, "android.intent.extra.REPLACING"

    .line 918
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2e9

    const-string p1, "android.intent.extra.UID"

    .line 919
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 920
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 921
    :try_start_131
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 922
    monitor-exit p2

    goto/16 :goto_2e9

    :catchall_13d
    move-exception p0

    monitor-exit p2
    :try_end_13f
    .catchall {:try_start_131 .. :try_end_13f} :catchall_13d

    throw p0

    :cond_140
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 924
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    if-eqz v0, :cond_16d

    const-string p1, "JobScheduler"

    .line 926
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_16d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v10, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 929
    :try_start_172
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 933
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0xd

    const/4 v6, 0x7

    const-string v7, "app uninstalled"

    move-object v3, v1

    move v4, v8

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 936
    :goto_187
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v9, p1, :cond_1a1

    .line 937
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p1, v1, v8}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_187

    .line 939
    :cond_1a1
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v1, v8}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 941
    monitor-exit v10

    goto/16 :goto_2e9

    :catchall_1b2
    move-exception p0

    monitor-exit v10
    :try_end_1b4
    .catchall {:try_start_172 .. :try_end_1b4} :catchall_1b2

    throw p0

    :cond_1b5
    const-string v2, "android.intent.action.USER_ADDED"

    .line 942
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e8

    const-string p1, "android.intent.extra.user_handle"

    .line 943
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 944
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 945
    :goto_1c8
    :try_start_1c8
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v9, p2, :cond_1e2

    .line 946
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c8

    .line 948
    :cond_1e2
    monitor-exit v2

    goto/16 :goto_2e9

    :catchall_1e5
    move-exception p0

    monitor-exit v2
    :try_end_1e7
    .catchall {:try_start_1c8 .. :try_end_1e7} :catchall_1e5

    throw p0

    :cond_1e8
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 949
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_248

    const-string p1, "android.intent.extra.user_handle"

    .line 950
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_20e

    const-string p2, "JobScheduler"

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_20e
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 955
    :try_start_213
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 956
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V

    .line 957
    :goto_221
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_23b

    .line 958
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_221

    .line 960
    :cond_23b
    monitor-exit p2
    :try_end_23c
    .catchall {:try_start_213 .. :try_end_23c} :catchall_245

    .line 961
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    goto/16 :goto_2e9

    :catchall_245
    move-exception p0

    .line 960
    :try_start_246
    monitor-exit p2
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    throw p0

    :cond_248
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 962
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a9

    if-eq v8, v3, :cond_2e9

    .line 967
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 968
    :try_start_257
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p2

    .line 969
    monitor-exit p1
    :try_end_260
    .catchall {:try_start_257 .. :try_end_260} :catchall_2a6

    .line 970
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_266
    if-ltz p1, :cond_2e9

    .line 971
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 972
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_29f

    const-string p1, "JobScheduler"

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restart query: package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has jobs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_29f
    invoke-virtual {p0, v3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_2e9

    :cond_2a3
    add-int/lit8 p1, p1, -0x1

    goto :goto_266

    :catchall_2a6
    move-exception p0

    .line 969
    :try_start_2a7
    monitor-exit p1
    :try_end_2a8
    .catchall {:try_start_2a7 .. :try_end_2a8} :catchall_2a6

    throw p0

    :cond_2a9
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    .line 981
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e9

    if-eq v8, v3, :cond_2e9

    if-eqz v0, :cond_2d3

    const-string p1, "JobScheduler"

    .line 985
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for pkg "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_2d3
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 988
    :try_start_2d8
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const-string v7, "app force stopped"

    move-object v3, v1

    move v4, v8

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V

    .line 992
    monitor-exit p1

    goto :goto_2e9

    :catchall_2e6
    move-exception p0

    monitor-exit p1
    :try_end_2e8
    .catchall {:try_start_2d8 .. :try_end_2e8} :catchall_2e6

    throw p0

    :cond_2e9
    :goto_2e9
    return-void
.end method
