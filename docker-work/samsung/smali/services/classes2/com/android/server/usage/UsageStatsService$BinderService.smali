.class public final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 2089
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 6

    .line 2146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2147
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2149
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_15

    return-void

    .line 2151
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2142
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public clearBroadcastEvents(Ljava/lang/String;I)V
    .registers 13

    .line 2874
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastEvents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2880
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    move v4, v0

    move v5, p2

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2883
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastEvents(II)V

    return-void
.end method

.method public clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 16

    .line 2855
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_35

    .line 2861
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string v2, "clearBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2865
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clearBroadcastResponseStats"

    move v4, v0

    move v5, p5

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2868
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v3

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->clearBroadcastResponseStats(ILjava/lang/String;JI)V

    return-void

    .line 2857
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id needs to be >=0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteUsageStats()V
    .registers 3

    .line 2909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2910
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    .line 2912
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mdeleteUsageStats(Lcom/android/server/usage/UsageStatsService;I)V

    :cond_12
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2563
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2564
    :cond_f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .registers 1

    .line 2805
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13

    .line 2487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2489
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2490
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    move v2, v8

    move v3, p3

    .line 2489
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_6f

    .line 2495
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-eq v0, v8, :cond_32

    .line 2498
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    goto :goto_32

    .line 2499
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query min app standby bucket"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    if-ltz v0, :cond_53

    .line 2508
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p2, v8, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result p2

    .line 2510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2512
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2513
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2512
    invoke-interface {p0, p1, v0, p3, p2}, Lcom/android/server/usage/AppStandbyInternal;->getAppMinStandbyBucket(Ljava/lang/String;IIZ)I

    move-result p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4e

    .line 2515
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2516
    throw p0

    .line 2504
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get min standby bucket for non existent package ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6f
    move-exception p0

    .line 2493
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    .line 2396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2398
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getAppStandbyBucket"

    const/4 v9, 0x0

    move v4, v10

    move v5, p3

    .line 2398
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_70

    .line 2404
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-eq v3, v10, :cond_32

    .line 2407
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_32

    .line 2408
    :cond_2a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    if-ltz v3, :cond_54

    .line 2416
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v10, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v5

    .line 2418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2420
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object v1, p1

    .line 2420
    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4f

    .line 2423
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_4f
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2424
    throw v0

    .line 2413
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_70
    move-exception v0

    .line 2402
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 2446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2448
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2449
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    move v3, p2

    .line 2448
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_46

    .line 2454
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2460
    :try_start_20
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2461
    invoke-interface {p0, p2}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2f

    .line 2462
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    goto :goto_35

    .line 2463
    :cond_2f
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_39

    move-object p0, p1

    .line 2465
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2466
    throw p0

    .line 2455
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query app standby bucket"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_46
    move-exception p0

    .line 2452
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2889
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    .line 2891
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2894
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2892
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have READ_DEVICE_CONFIG permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 2810
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2813
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 2816
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2819
    :try_start_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 2820
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    div-long/2addr p0, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    mul-long/2addr p0, v0

    monitor-exit p2

    return-wide p0

    :catchall_3f
    move-exception p0

    .line 2821
    monitor-exit p2
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0

    .line 2814
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Don\'t have permission to query usage stats"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2811
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have INTERACT_ACROSS_USERS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUsageSource()I
    .registers 2

    .line 2795
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2798
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2799
    :try_start_d
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 2800
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw p0

    .line 2796
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 2901
    new-instance v0, Lcom/android/server/usage/UsageStatsShellCommand;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {v0, v1}, Lcom/android/server/usage/UsageStatsShellCommand;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    .line 2902
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 2901
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hasObserverPermission()Z
    .registers 5

    .line 2108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2109
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2e

    if-eqz v1, :cond_1e

    .line 2113
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 2114
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2e

    .line 2118
    :cond_1e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :cond_2e
    :goto_2e
    return v2
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 6

    .line 2092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 2096
    :cond_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p1, v0, :cond_29

    .line 2101
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1

    :cond_29
    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public final varargs hasPermissions([Ljava/lang/String;)Z
    .registers 7

    .line 2123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 2130
    :cond_a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    .line 2131
    :goto_13
    array-length v4, p1

    if-ge v2, v4, :cond_26

    if-eqz v3, :cond_22

    .line 2132
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    move v3, v1

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    return v3
.end method

.method public isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2344
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "isAppInactive"

    const/4 v9, 0x0

    move v4, v10

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v13
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_5a

    move-object/from16 v2, p1

    .line 2351
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_32

    .line 2352
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v1, v5, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-eq v1, v10, :cond_39

    return v4

    .line 2357
    :cond_32
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    return v4

    .line 2360
    :cond_39
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v10, v13}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v16

    .line 2362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2364
    :try_start_43
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 2366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v12, p1

    .line 2364
    invoke-interface/range {v11 .. v16}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleFiltered(Ljava/lang/String;IJZ)Z

    move-result v0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_55

    .line 2368
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_55
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2369
    throw v0

    :catch_5a
    move-exception v0

    .line 2347
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final isCallingUidSystem()Z
    .registers 2

    .line 2157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 2555
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->clearCarrierPrivilegedApps()V

    return-void
.end method

.method public queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;
    .registers 16

    .line 2831
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3d

    .line 2837
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v2, "queryBroadcastResponseStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "queryBroadcastResponseStats"

    move v4, v0

    move v5, p5

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2844
    new-instance p4, Landroid/app/usage/BroadcastResponseStatsList;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object v3

    move-object v5, p1

    move-wide v6, p2

    .line 2845
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    invoke-direct {p4, p0}, Landroid/app/usage/BroadcastResponseStatsList;-><init>(Ljava/util/List;)V

    return-object p4

    .line 2834
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id needs to be >=0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    .line 2192
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return-object v2

    .line 2196
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2199
    :try_start_13
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 2200
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2203
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_2c

    .line 2206
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_28
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_2c
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    .line 2214
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return-object v2

    .line 2218
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2221
    :try_start_13
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 2222
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2225
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_2c

    .line 2228
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_28
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_2c
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2229
    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15

    .line 2235
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2239
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2242
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v0, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 2245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2247
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4, v1, p5, v2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z

    move-result p5

    .line 2249
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4, v2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 2250
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5, v2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    if-eqz p5, :cond_34

    or-int/lit8 v3, v3, 0x2

    :cond_34
    if-eqz v4, :cond_38

    or-int/lit8 v3, v3, 0x8

    :cond_38
    if-eqz v0, :cond_3e

    or-int/lit8 p5, v3, 0x4

    move v6, p5

    goto :goto_3f

    :cond_3e
    move v6, v3

    .line 2257
    :goto_3f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_47
    .catchall {:try_start_1e .. :try_end_47} :catchall_4b

    .line 2259
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4b
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2260
    throw p0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 2266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2267
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2269
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    .line 2272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2274
    :try_start_13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 2277
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2278
    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p7

    .line 2321
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 2324
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v3, p5

    if-eq v3, v1, :cond_20

    .line 2325
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move-object/from16 v1, p6

    .line 2329
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2333
    :try_start_29
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v9, 0x1

    move/from16 v3, p5

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    .line 2336
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_3a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2337
    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 17

    move-object v0, p0

    move v1, p5

    move-object/from16 v2, p6

    .line 2284
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 2288
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq v1, v3, :cond_1f

    .line 2290
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v6, "No permission to query usage stats for this user"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2296
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2297
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, v4, v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 2300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2302
    :try_start_31
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p5, v2, v5, v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z

    move-result v2

    .line 2304
    iget-object v6, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, v5, v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v6

    .line 2306
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v9, v5, v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    if-eqz v2, :cond_47

    or-int/lit8 v3, v3, 0x2

    :cond_47
    if-eqz v4, :cond_4b

    or-int/lit8 v3, v3, 0x8

    :cond_4b
    if-eqz v6, :cond_51

    or-int/lit8 v2, v3, 0x4

    move v6, v2

    goto :goto_52

    :cond_51
    move v6, v3

    .line 2312
    :goto_52
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_5f

    .line 2314
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_5f
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2315
    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p6

    .line 2164
    invoke-virtual {v0, v7}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_c

    return-object v8

    .line 2168
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "queryUsageStats"

    move v2, v9

    move/from16 v3, p7

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2173
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2173
    invoke-static {v1, v9, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v17

    .line 2176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2178
    :try_start_30
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2181
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_4b

    .line 2184
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_4b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2185
    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 21

    move-object v0, p0

    move-object v3, p2

    .line 2683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2684
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v2

    const-string v4, "android.permission.SUSPEND_APPS"

    const-string v5, "android.permission.OBSERVE_APP_USAGE"

    .line 2685
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    if-eqz v2, :cond_23

    .line 2687
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2b

    .line 2688
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    if-eqz v3, :cond_5c

    .line 2692
    array-length v2, v3

    if-eqz v2, :cond_5c

    if-nez p7, :cond_3f

    cmp-long v2, p5, p3

    if-ltz v2, :cond_37

    goto :goto_3f

    .line 2696
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2698
    :cond_3f
    :goto_3f
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2701
    :try_start_47
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_57

    .line 2704
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_57
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2705
    throw v0

    .line 2693
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 18

    move-object v0, p2

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_36

    .line 2602
    array-length v1, v0

    if-eqz v1, :cond_36

    if-eqz p5, :cond_2e

    .line 2608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2609
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-object v1, p0

    .line 2612
    :try_start_1b
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    .line 2615
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    throw v0

    .line 2606
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2603
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2599
    :cond_3e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p2

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v0, :cond_3d

    .line 2644
    array-length v1, v0

    if-eqz v1, :cond_3d

    if-eqz p7, :cond_35

    .line 2650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2651
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-object v1, p0

    .line 2654
    :try_start_1c
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_30

    .line 2658
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2659
    throw v0

    .line 2648
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2645
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2641
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    .registers 5

    .line 2921
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2924
    :try_start_13
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2925
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public registerUsageStatsWatcherWithComponent(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/usage/IUsageStatsWatcher;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2932
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2936
    :try_start_13
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2937
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3f

    .line 2939
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-nez p1, :cond_a

    const-string p0, "UsageStatsService"

    const-string p1, "Event report user selecting a null package"

    .line 2571
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2575
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2576
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2577
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 2578
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 2579
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 2580
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    .line 2738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2739
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2743
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_6e

    .line 2744
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_31

    .line 2746
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2747
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2749
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_6b

    .line 2751
    :try_start_32
    monitor-enter v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_6e

    .line 2752
    :try_start_33
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2756
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_68

    .line 2758
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p0, p5, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_6e

    .line 2761
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2753
    :cond_49
    :try_start_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as started for this activity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_68
    move-exception p0

    .line 2756
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6e

    :catchall_6b
    move-exception p0

    .line 2749
    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p0

    .line 2761
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2762
    throw p0
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2731
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2768
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2772
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_7d

    .line 2773
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_5b

    .line 2779
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_7a

    .line 2781
    :try_start_22
    monitor-enter p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_7d

    .line 2782
    :try_start_23
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2786
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_58

    .line 2787
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_7d

    .line 2789
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2783
    :cond_39
    :try_start_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as stopped for this activity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_58
    move-exception p0

    .line 2786
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_7d

    .line 2775
    :cond_5b
    :try_start_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown reporter trying to stop token "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7a
    move-exception p0

    .line 2779
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p0

    .line 2789
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2790
    throw p0
.end method

.method public reportUserInteraction(Ljava/lang/String;I)V
    .registers 7

    .line 2585
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2589
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 2590
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2591
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 2587
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system is allowed to call reportUserInteraction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 12

    .line 2374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2376
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2377
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    move v3, p3

    .line 2376
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_46

    .line 2382
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2386
    :try_start_28
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getAppId(Ljava/lang/String;)I

    move-result v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_41

    if-gez v2, :cond_36

    .line 2390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2388
    :cond_36
    :try_start_36
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    .line 2390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_41
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2391
    throw p0

    :catch_46
    move-exception p0

    .line 2380
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 13

    .line 2429
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app standby state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2436
    :try_start_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBucket(Ljava/lang/String;IIII)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_27

    .line 2439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2440
    throw p0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 7

    .line 2471
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app standby state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2475
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2478
    :try_start_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setAppStandbyBuckets(Ljava/util/List;III)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_28

    .line 2481
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    throw p0
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;JI)V
    .registers 8

    .line 2522
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    const-string v2, "No permission to change app launch estimates"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2528
    :try_start_11
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2529
    invoke-static {p0, p4, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 2531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    throw p0
.end method

.method public setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    .registers 6

    .line 2537
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    const-string v2, "No permission to change app launch estimates"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2543
    :try_start_11
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2544
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 2546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2547
    throw p0
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .registers 6

    .line 2710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2711
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    const-string v1, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    .line 2712
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz v0, :cond_21

    .line 2714
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveSupervisionApp(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_29

    .line 2715
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2719
    :cond_29
    :goto_29
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2722
    :try_start_31
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3a

    .line 2725
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2726
    throw p0
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 6

    .line 2621
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 2625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2626
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2629
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 2631
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2632
    throw p0

    .line 2622
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .registers 6

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 2668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2669
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2672
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 2675
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    throw p0

    .line 2665
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    .registers 5

    .line 2947
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2951
    :try_start_13
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2952
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchers(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUsageStatsWatchersComponent(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_3f

    throw p0
.end method
