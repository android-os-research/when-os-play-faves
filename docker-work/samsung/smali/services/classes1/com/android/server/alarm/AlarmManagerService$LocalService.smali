.class public final Lcom/android/server/alarm/AlarmManagerService$LocalService;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 3116
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 3172
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3173
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncWrapper;->disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    .line 3164
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3165
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncWrapper;->enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public hasExactAlarmPermission(Ljava/lang/String;I)Z
    .registers 4

    .line 3136
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3137
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isIdling()Z
    .registers 1

    .line 3119
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z

    move-result p0

    return p0
.end method

.method public onFreezeStateChanged(ZI)V
    .registers 7

    .line 3151
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3152
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-nez p1, :cond_24

    .line 3154
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3155
    :try_start_19
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingMARsRestrictedAlarmsLocked(Ljava/lang/String;I)V

    .line 3156
    monitor-exit p1

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    return-void
.end method

.method public registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V
    .registers 3

    .line 3142
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3143
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInFlightListeners(Lcom/android/server/alarm/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3144
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .registers 3

    .line 3131
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeAlarmsForUid(I)V
    .registers 4

    .line 3124
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3125
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(II)V

    .line 3126
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method
