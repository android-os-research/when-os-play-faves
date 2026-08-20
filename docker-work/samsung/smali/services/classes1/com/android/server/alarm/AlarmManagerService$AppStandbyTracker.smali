.class public final Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppStandbyTracker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 6047
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 6055
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 p3, 0x5

    const/4 p4, -0x1

    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6056
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public triggerTemporaryQuotaBump(Ljava/lang/String;I)V
    .registers 12

    .line 6062
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6063
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 6064
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4c

    if-gtz v6, :cond_f

    return-void

    .line 6068
    :cond_f
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ltz v0, :cond_4b

    .line 6069
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_4b

    .line 6075
    :cond_22
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6076
    :try_start_27
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v1

    .line 6077
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    move-object v4, p1

    move v5, p2

    .line 6076
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->replenishQuota(Ljava/lang/String;IIJ)V

    .line 6078
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_48

    .line 6079
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v0, 0xe

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6080
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_48
    move-exception p0

    .line 6078
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0

    :cond_4b
    :goto_4b
    return-void

    :catchall_4c
    move-exception p0

    .line 6064
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method
