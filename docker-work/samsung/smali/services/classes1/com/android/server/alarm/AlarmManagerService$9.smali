.class public Lcom/android/server/alarm/AlarmManagerService$9;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$MemKAdPPa1cIGMIRjJaMc2sjJh8(Lcom/android/server/alarm/AlarmManagerService$9;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$9;->lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rKMqoDhGfnkrswtqMN5Pu5Sb-Hs(Lcom/android/server/alarm/AlarmManagerService$9;ILcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$9;->lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 6111
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 6132
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eq v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6135
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    .line 6121
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public removeAlarmsForUid(I)V
    .registers 3

    .line 6170
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6171
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 6172
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public unblockAlarmsForUid(I)V
    .registers 4

    .line 6154
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6156
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 6157
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 4

    .line 6163
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6164
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 6165
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 2

    .line 6147
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6148
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 6149
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public updateAlarmsForUid(I)V
    .registers 5

    .line 6130
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6131
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$9;I)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 6137
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 6139
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public updateAllAlarms()V
    .registers 4

    .line 6119
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6120
    :try_start_5
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$9;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6122
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$9;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 6124
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p0
.end method
