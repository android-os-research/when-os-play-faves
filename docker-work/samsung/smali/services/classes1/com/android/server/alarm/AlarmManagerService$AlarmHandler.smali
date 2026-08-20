.class Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final APP_STANDBY_BUCKET_CHANGED:I = 0x5

.field public static final CHARGING_STATUS_CHANGED:I = 0x6

.field public static final CHECK_EXACT_ALARM_PERMISSION_ON_UPDATE:I = 0xd

.field public static final EXACT_ALARM_DENY_LIST_PACKAGES_ADDED:I = 0x9

.field public static final EXACT_ALARM_DENY_LIST_PACKAGES_REMOVED:I = 0xa

.field public static final LISTENER_TIMEOUT:I = 0x3

.field public static final REFRESH_EXACT_ALARM_CANDIDATES:I = 0xb

.field public static final REMOVE_EXACT_ALARMS:I = 0x8

.field public static final REMOVE_FOR_CANCELED:I = 0x7

.field public static final REPORT_ALARMS_ACTIVE:I = 0x4

.field public static final RESCHEDULE_KERNEL_ALARM:I = 0x15

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x2

.field public static final TARE_AFFORDABILITY_CHANGED:I = 0xc

.field public static final TEMPORARY_QUOTA_CHANGED:I = 0xe


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 5690
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5691
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 5696
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_174

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_184

    goto/16 :goto_17f

    .line 5810
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5811
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5812
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17f

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5813
    invoke-virtual {v1, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 5814
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    goto/16 :goto_17f

    .line 5767
    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5768
    :try_start_30
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5769
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5771
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 5772
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5773
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 5774
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5775
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5777
    :cond_58
    monitor-exit v0

    goto/16 :goto_17f

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_30 .. :try_end_5d} :catchall_5b

    throw p0

    .line 5799
    :pswitch_5e
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    goto/16 :goto_17f

    .line 5796
    :pswitch_65
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V

    goto/16 :goto_17f

    .line 5793
    :pswitch_70
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V

    goto/16 :goto_17f

    .line 5788
    :pswitch_7b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5789
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5790
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    goto/16 :goto_17f

    .line 5781
    :pswitch_88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/PendingIntent;

    .line 5782
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5783
    :try_start_91
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 5784
    monitor-exit v0

    goto/16 :goto_17f

    :catchall_9a
    move-exception p0

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_9a

    throw p0

    .line 5745
    :pswitch_9d
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5746
    :try_start_a2
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 5747
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 5748
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5749
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5751
    :cond_c0
    monitor-exit v0

    goto/16 :goto_17f

    :catchall_c3
    move-exception p0

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_a2 .. :try_end_c5} :catchall_c3

    throw p0

    .line 5756
    :pswitch_c6
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5757
    :try_start_cb
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5758
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5759
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 5760
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5761
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5763
    :cond_f3
    monitor-exit v0

    goto/16 :goto_17f

    :catchall_f6
    move-exception p0

    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_cb .. :try_end_f8} :catchall_f6

    throw p0

    .line 5739
    :pswitch_f9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_17f

    .line 5740
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_104

    move v2, v3

    :cond_104
    invoke-interface {p0, v2}, Lcom/android/server/DeviceIdleInternal;->setAlarmsActive(Z)V

    goto/16 :goto_17f

    .line 5735
    :pswitch_109
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    goto :goto_17f

    .line 5731
    :pswitch_115
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V

    goto :goto_17f

    .line 5702
    :pswitch_11b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5703
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5704
    :try_start_125
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 5705
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    .line 5706
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 5707
    monitor-exit v0
    :try_end_13a
    .catchall {:try_start_125 .. :try_end_13a} :catchall_171

    .line 5710
    :goto_13a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_17f

    .line 5711
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 5714
    :try_start_146
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object v12

    .line 5715
    iget-object v5, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_157
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_146 .. :try_end_157} :catch_158

    goto :goto_167

    .line 5719
    :catch_158
    iget-wide v4, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_167

    .line 5722
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 5725
    :cond_167
    :goto_167
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4, v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13a

    :catchall_171
    move-exception p0

    .line 5707
    :try_start_172
    monitor-exit v0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw p0

    .line 5804
    :cond_174
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5805
    :try_start_179
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 5806
    monitor-exit p1

    :cond_17f
    :goto_17f
    return-void

    :catchall_180
    move-exception p0

    monitor-exit p1
    :try_end_182
    .catchall {:try_start_179 .. :try_end_182} :catchall_180

    throw p0

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_115
        :pswitch_109
        :pswitch_f9
        :pswitch_c6
        :pswitch_9d
        :pswitch_88
        :pswitch_7b
        :pswitch_70
        :pswitch_65
        :pswitch_5e
        :pswitch_2b
        :pswitch_e
        :pswitch_c6
    .end packed-switch
.end method
