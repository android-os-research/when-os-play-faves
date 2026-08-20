.class public final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 2997
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .registers 7

    .line 3210
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3211
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string p0, "UsageStatsService"

    .line 3212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to apply restored payload for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    monitor-exit v0

    return-void

    :cond_2f
    if-nez p1, :cond_3e

    .line 3217
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    if-nez p0, :cond_3b

    .line 3219
    monitor-exit v0

    return-void

    .line 3221
    :cond_3b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 3223
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 11

    .line 3164
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p0

    return p0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 3

    .line 3291
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .registers 5

    .line 3187
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    const-string p0, "UsageStatsService"

    .line 3188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get backup payload for locked user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3191
    :cond_28
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_41

    .line 3197
    :try_start_31
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    if-nez p0, :cond_3b

    .line 3199
    monitor-exit v0

    return-object v1

    .line 3201
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3203
    :cond_41
    monitor-exit v0

    return-object v1

    :catchall_43
    move-exception p0

    .line 3205
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public getEstimatedPackageLaunchTime(Ljava/lang/String;I)J
    .registers 3

    .line 3246
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getIdleUidsForUser(I)[I
    .registers 2

    .line 3169
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getIdleUidsForUser(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 3

    .line 3251
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .registers 10

    .line 3157
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 3158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 3157
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .registers 3

    .line 3261
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 1

    .line 3276
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->onAdminDataAvailable()V

    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 1

    .line 3182
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->prepareForPossibleShutdown()V

    return-void
.end method

.method public prepareShutdown()V
    .registers 1

    .line 3177
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    return-void
.end method

.method public pruneUninstalledPackagesData(I)Z
    .registers 2

    .line 3296
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mpruneUninstalledPackagesData(Lcom/android/server/usage/UsageStatsService;I)Z

    move-result p0

    return p0
.end method

.method public queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;
    .registers 14

    .line 3236
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 3230
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 3323
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    .line 3309
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public reportAppJobState(Ljava/lang/String;IIJ)V
    .registers 6

    return-void
.end method

.method public reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 19

    move-object v0, p0

    .line 3336
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .registers 7

    if-nez p1, :cond_a

    const-string p0, "UsageStatsService"

    const-string p1, "Configuration event reported with a null config"

    .line 3101
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3105
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v1, "android"

    .line 3106
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3107
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 3108
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 3152
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .registers 9

    if-nez p1, :cond_a

    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a component name"

    .line 3003
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3007
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3008
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3009
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 3010
    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    if-nez p5, :cond_29

    const/4 p1, 0x0

    .line 3012
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3013
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_35

    .line 3015
    :cond_29
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3016
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 3018
    :goto_35
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    if-nez v1, :cond_16

    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a component name"

    .line 3038
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3042
    :cond_16
    new-instance v6, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {v6, v3, v7, v8}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3043
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3044
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 3045
    iput v4, v6, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    const/4 v7, 0x0

    if-nez p5, :cond_35

    .line 3047
    iput-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3048
    iput-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_41

    .line 3050
    :cond_35
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 3051
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 3053
    :goto_41
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3055
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 3056
    :try_start_54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v9, 0x18

    const/16 v10, 0x17

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v3, v12, :cond_67

    if-eq v3, v11, :cond_67

    if-eq v3, v10, :cond_67

    if-ne v3, v9, :cond_c9

    .line 3061
    :cond_67
    iget-object v13, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v13}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_75
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 3062
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_ee

    .line 3064
    :try_start_87
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 3065
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 3066
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_ae

    .line 3068
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ae

    const/4 v14, 0x0

    :cond_ae
    if-eqz v14, :cond_c7

    if-ne v3, v12, :cond_b6

    .line 3076
    invoke-interface {v14, v1, v5, v4, v2}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V

    goto :goto_c7

    :cond_b6
    if-ne v3, v11, :cond_bc

    .line 3078
    invoke-interface {v14, v1, v5, v4, v2}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V

    goto :goto_c7

    :cond_bc
    if-eq v3, v10, :cond_c0

    if-ne v3, v9, :cond_c7

    .line 3081
    :cond_c0
    invoke-interface {v14, v1, v5, v4, v2}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_c3} :catch_c4
    .catchall {:try_start_87 .. :try_end_c3} :catchall_ee

    goto :goto_c7

    .line 3085
    :catch_c4
    :try_start_c4
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    :goto_c7
    const/4 v7, 0x0

    goto :goto_75

    .line 3090
    :cond_c9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 3091
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 3094
    :cond_ec
    monitor-exit v6

    return-void

    :catchall_ee
    move-exception v0

    monitor-exit v6
    :try_end_f0
    .catchall {:try_start_c4 .. :try_end_f0} :catchall_ee

    throw v0
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .registers 7

    if-nez p1, :cond_19

    .line 3024
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Event reported without a package name, eventType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3028
    :cond_19
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3029
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3030
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 3

    .line 3286
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_22

    if-nez p2, :cond_5

    goto :goto_22

    .line 3119
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3120
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3121
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 3122
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    :cond_22
    :goto_22
    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a package name or a channel ID"

    .line 3115
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportLocusUpdate(Landroid/content/ComponentName;ILandroid/content/LocusId;Landroid/os/IBinder;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 3142
    :cond_3
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x1e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3143
    invoke-virtual {p3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 3144
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3145
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 3146
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 3147
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 5

    .line 3343
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 5

    .line 3355
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationCancelled(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 5

    .line 3349
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_22

    if-nez p2, :cond_5

    goto :goto_22

    .line 3132
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 3133
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 3134
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 3135
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    :cond_22
    :goto_22
    const-string p0, "UsageStatsService"

    const-string p1, "Event reported without a package name or a shortcut ID"

    .line 3128
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 4

    .line 3281
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3266
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->setActiveAdminApps(Ljava/util/Set;I)V

    return-void
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3271
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 5

    .line 3241
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    return-void
.end method

.method public unregisterLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 3329
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$munregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    .line 3317
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$munregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public updatePackageMappingsData()Z
    .registers 1

    .line 3301
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mupdatePackageMappingsData(Lcom/android/server/usage/UsageStatsService;)Z

    move-result p0

    return p0
.end method
