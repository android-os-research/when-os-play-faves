.class public Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LaunchTimeAlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 13

    .line 541
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    const-string v3, "*usage.launchTime*"

    const-string v4, "Estimated launch times"

    const/4 v5, 0x1

    const-wide/16 v6, 0x7530

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 542
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 543
    iput p2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .registers 3

    .line 538
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->isForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 548
    iget p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 557
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 558
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 560
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_23

    .line 561
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    :catchall_23
    move-exception p0

    .line 560
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    return-void
.end method
