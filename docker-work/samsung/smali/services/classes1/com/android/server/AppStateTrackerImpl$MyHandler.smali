.class public Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ALL_EXEMPTION_LIST_CHANGED:I = 0x5

.field public static final MSG_ALL_UNEXEMPTED:I = 0x4

.field public static final MSG_AUTO_RESTRICTED_BUCKET_FEATURE_FLAG_CHANGED:I = 0xb

.field public static final MSG_EXEMPTED_BUCKET_CHANGED:I = 0xa

.field public static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field public static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field public static final MSG_ON_UID_ACTIVE:I = 0xc

.field public static final MSG_ON_UID_GONE:I = 0xd

.field public static final MSG_ON_UID_IDLE:I = 0xe

.field public static final MSG_RUN_ANY_CHANGED:I = 0x3

.field public static final MSG_TEMP_EXEMPTION_LIST_CHANGED:I = 0x6

.field public static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field public static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 838
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 839
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doUserRemoved(I)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 887
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 904
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16b

    .line 911
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 912
    :try_start_d
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v3, v2, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v3, :cond_15

    .line 913
    monitor-exit v0

    return-void

    .line 915
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_168

    .line 918
    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v3

    .line 919
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_14b

    packed-switch v0, :pswitch_data_174

    return-void

    .line 1006
    :pswitch_28
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidIdle(I)V

    .line 1007
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_36

    .line 1008
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    :cond_36
    return-void

    .line 1000
    :pswitch_37
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidGone(I)V

    .line 1001
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_45

    .line 1002
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    :cond_45
    return-void

    .line 997
    :pswitch_46
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidActive(I)V

    return-void

    .line 990
    :pswitch_4c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v6, :cond_51

    goto :goto_52

    :cond_51
    move v6, v5

    .line 991
    :goto_52
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length p1, p0

    :goto_59
    if-ge v5, p1, :cond_63

    aget-object v0, p0, v5

    .line 992
    invoke-static {v0, v2, v6}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_63
    return-void

    .line 956
    :pswitch_64
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_6b
    if-ge v5, v0, :cond_75

    aget-object v1, p1, v5

    .line 957
    invoke-static {v1, v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 959
    :cond_75
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 972
    :pswitch_80
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 973
    :try_start_87
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v2, p1, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-nez v2, :cond_8e

    goto :goto_8f

    :cond_8e
    move v6, v5

    .line 974
    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_ae

    .line 975
    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_95
    if-ge v5, v0, :cond_a4

    aget-object v2, p1, v5

    .line 976
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    if-eqz v6, :cond_a1

    .line 978
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 981
    :cond_a4
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :catchall_ae
    move-exception p0

    .line 974
    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p0

    .line 986
    :pswitch_b1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    .line 963
    :pswitch_b9
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_c0
    if-ge v5, v0, :cond_ca

    aget-object v1, p1, v5

    .line 964
    invoke-static {v1, v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 966
    :cond_ca
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 949
    :pswitch_d5
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_dc
    if-ge v5, v0, :cond_e6

    aget-object v1, p1, v5

    .line 950
    invoke-static {v1, v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 952
    :cond_e6
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 942
    :pswitch_f1
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_f8
    if-ge v5, v0, :cond_102

    aget-object v1, p1, v5

    .line 943
    invoke-static {v1, v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    .line 945
    :cond_102
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 935
    :pswitch_10d
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_114
    if-ge v5, v0, :cond_11e

    aget-object v1, p1, v5

    .line 936
    invoke-static {v1, v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    .line 938
    :cond_11e
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 928
    :pswitch_129
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    :goto_130
    if-ge v5, v1, :cond_140

    aget-object v6, v0, v5

    .line 929
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v2, v7, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    .line 931
    :cond_140
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 921
    :cond_14b
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    :goto_152
    if-ge v5, v1, :cond_15e

    aget-object v7, v0, v5

    .line 922
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v2, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_152

    .line 924
    :cond_15e
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :catchall_168
    move-exception p0

    .line 915
    :try_start_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw p0

    .line 906
    :cond_16b
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    nop

    :pswitch_data_174
    .packed-switch 0x3
        :pswitch_129
        :pswitch_10d
        :pswitch_f1
        :pswitch_d5
        :pswitch_b9
        :pswitch_b1
        :pswitch_80
        :pswitch_64
        :pswitch_4c
        :pswitch_46
        :pswitch_37
        :pswitch_28
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .registers 4

    .line 1021
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1022
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1023
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 1025
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final handleUidDisabled(I)V
    .registers 5

    .line 1015
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 1016
    invoke-virtual {v2, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public handleUidGone(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1029
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public handleUidIdle(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1034
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public notifyAllExemptionListChanged()V
    .registers 2

    const/4 v0, 0x5

    .line 856
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAllUnexempted()V
    .registers 2

    const/4 v0, 0x4

    .line 851
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 4

    const/16 v0, 0xb

    .line 881
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 882
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 883
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyExemptedBucketChanged()V
    .registers 2

    const/16 v0, 0xa

    .line 876
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .registers 2

    const/4 v0, 0x7

    .line 866
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .registers 2

    const/16 v0, 0x9

    .line 871
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 847
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTempExemptionListChanged()V
    .registers 2

    const/4 v0, 0x6

    .line 861
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 862
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidActive(I)V
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 891
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    const/16 v0, 0xd

    .line 895
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    const/16 v0, 0xe

    .line 899
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeUid(IZ)V
    .registers 5

    .line 1038
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1039
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 1040
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 1042
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method
