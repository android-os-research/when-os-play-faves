.class public Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3

    .line 1974
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1975
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 1980
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_16a

    .line 2079
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_168

    :pswitch_b
    const/16 p1, 0x9

    .line 2036
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2050
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 2051
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2052
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    .line 2053
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_8b

    sub-int/2addr v2, v1

    :goto_28
    if-ltz v2, :cond_168

    .line 2055
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 2057
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2058
    :try_start_34
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    .line 2059
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2060
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 2061
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_88

    .line 2065
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_5a
    if-ltz v0, :cond_85

    .line 2066
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2067
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2068
    invoke-virtual {v5, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v5

    .line 2070
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_72
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 2071
    invoke-interface {v8, v3, v4, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;->onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V

    goto :goto_72

    :cond_82
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    :cond_85
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    :catchall_88
    move-exception p0

    .line 2061
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0

    :catchall_8b
    move-exception p0

    .line 2053
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p0

    .line 2031
    :pswitch_8e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2032
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mhandleEstimatedLaunchTimesOnUserUnlock(Lcom/android/server/usage/UsageStatsService;I)V

    goto/16 :goto_168

    .line 2026
    :pswitch_97
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2027
    :try_start_9e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V

    .line 2028
    monitor-exit v0

    goto/16 :goto_168

    :catchall_a6
    move-exception p0

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a6

    throw p0

    .line 2005
    :pswitch_a9
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    goto/16 :goto_168

    .line 1992
    :pswitch_b6
    :try_start_b6
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bd} :catch_bf

    goto/16 :goto_168

    :catch_bf
    move-exception v0

    .line 1994
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_e6

    const-string p0, "UsageStatsService"

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to unlock stopped or removed user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168

    .line 1995
    :cond_e6
    throw v0

    .line 1985
    :pswitch_e7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    goto/16 :goto_168

    .line 2008
    :pswitch_f2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2009
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt p1, v2, :cond_fb

    move v1, v3

    .line 2012
    :cond_fb
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 2013
    :try_start_102
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq v1, p1, :cond_14a

    .line 2015
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_117
    .catchall {:try_start_102 .. :try_end_117} :catchall_14c

    .line 2017
    :try_start_117
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$sfgetKERNEL_COUNTER_FILE()Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_132} :catch_133
    .catchall {:try_start_117 .. :try_end_132} :catchall_14c

    goto :goto_14a

    :catch_133
    move-exception p0

    :try_start_134
    const-string p1, "UsageStatsService"

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update counter set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_14a
    :goto_14a
    monitor-exit v2

    goto :goto_168

    :catchall_14c
    move-exception p0

    monitor-exit v2
    :try_end_14e
    .catchall {:try_start_134 .. :try_end_14e} :catchall_14c

    throw p0

    .line 2002
    :pswitch_14f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    goto :goto_168

    .line 1988
    :pswitch_157
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    goto :goto_168

    .line 1982
    :pswitch_15d
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    :cond_168
    :goto_168
    return-void

    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_15d
        :pswitch_157
        :pswitch_14f
        :pswitch_f2
        :pswitch_e7
        :pswitch_b6
        :pswitch_a9
        :pswitch_97
        :pswitch_8e
        :pswitch_b
    .end packed-switch
.end method
