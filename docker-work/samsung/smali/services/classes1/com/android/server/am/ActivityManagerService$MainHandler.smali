.class public final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$nQbn-iaklEykeZqYQ0Hxksxf5B8(Lcom/android/server/am/ProcessRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->lambda$handleMessage$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnqzrvfbfhw0qbzF4Zpa6LsnUNU(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->lambda$handleMessage$2(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3Zh24d1IG7n6Ujgxim6Oc7DVPo(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->lambda$handleMessage$1(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 2043
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2044
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 2078
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2081
    :try_start_6
    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_24

    .line 2083
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update time zone for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public static synthetic lambda$handleMessage$1(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 3

    .line 2213
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BroadcastEventListener;->onSendingBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$2(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 3

    .line 2217
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BindServiceEventListener;->onBindingService(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 2049
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_287

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26d

    const/16 v1, 0x16

    if-eq v0, v1, :cond_23a

    const/16 v1, 0x21

    if-eq v0, v1, :cond_22d

    const/16 v1, 0x29

    if-eq v0, v1, :cond_211

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1f6

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1da

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1bd

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1b0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_190

    const/16 v1, 0x42

    if-eq v0, v1, :cond_183

    const/16 v1, 0x43

    if-eq v0, v1, :cond_16b

    packed-switch v0, :pswitch_data_2a0

    packed-switch v0, :pswitch_data_2aa

    packed-switch v0, :pswitch_data_2b4

    packed-switch v0, :pswitch_data_2be

    goto/16 :goto_298

    .line 2216
    :pswitch_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_298

    .line 2212
    :pswitch_4e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_298

    .line 2207
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2208
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 2209
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_298

    :catchall_6f
    move-exception p0

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2204
    :pswitch_75
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_298

    .line 2130
    :pswitch_7c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2131
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AppZygote;

    .line 2132
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 2133
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_298

    :catchall_93
    move-exception p0

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2196
    :pswitch_99
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_298

    .line 2105
    :pswitch_a0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 2106
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_a7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2107
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2108
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_298

    :catchall_b7
    move-exception p0

    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2185
    :pswitch_bd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/IUiAutomationConnection;

    .line 2187
    :try_start_c1
    invoke-interface {p1}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_cc

    :catch_c5
    const-string p1, "ActivityManager"

    const-string v0, "Error shutting down UiAutomationConnection"

    .line 2189
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_cc
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmUserIsMonkey(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_298

    .line 2182
    :pswitch_d3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    goto/16 :goto_298

    .line 2179
    :pswitch_e0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    goto/16 :goto_298

    .line 2160
    :pswitch_e9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2161
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 2163
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_f4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2164
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_fc
    .catchall {:try_start_f4 .. :try_end_fc} :catchall_128

    .line 2165
    :goto_fc
    :try_start_fc
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_11e

    .line 2166
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 2167
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    .line 2168
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_114
    .catchall {:try_start_fc .. :try_end_114} :catchall_125

    if-ne v4, v0, :cond_11b

    if-eqz v5, :cond_11b

    .line 2170
    :try_start_118
    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_11b} :catch_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_125

    :catch_11b
    :cond_11b
    add-int/lit8 v2, v2, 0x1

    goto :goto_fc

    .line 2175
    :cond_11e
    :try_start_11e
    monitor-exit v3
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_125

    .line 2176
    :try_start_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_128

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_298

    :catchall_125
    move-exception p0

    .line 2175
    :try_start_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw p0

    :catchall_128
    move-exception p0

    .line 2176
    monitor-exit v1
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_128

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2096
    :pswitch_12e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    goto/16 :goto_298

    .line 2091
    :pswitch_137
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p1

    :try_start_13c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2092
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLOSP()V

    .line 2093
    monitor-exit p1
    :try_end_147
    .catchall {:try_start_13c .. :try_end_147} :catchall_14c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_298

    :catchall_14c
    move-exception p0

    :try_start_14d
    monitor-exit p1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2136
    :pswitch_152
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    const/16 p1, 0x1b

    .line 2137
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2138
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2139
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_298

    .line 2062
    :cond_16b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2063
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeoutANR(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_298

    .line 2059
    :cond_183
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_298

    .line 2076
    :cond_190
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_195
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2077
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance p1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 2088
    monitor-exit v0
    :try_end_1a5
    .catchall {:try_start_195 .. :try_end_1a5} :catchall_1aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_298

    :catchall_1aa
    move-exception p0

    :try_start_1ab
    monitor-exit v0
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2056
    :cond_1b0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_298

    .line 2222
    :cond_1bd
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1cf

    .line 2223
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "APP_LAUNCH"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 2226
    :cond_1cf
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_298

    .line 2227
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    goto/16 :goto_298

    .line 2068
    :cond_1da
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2069
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 2073
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_298

    .line 2199
    :cond_1f6
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_1fb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2200
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLOSP()V

    .line 2201
    monitor-exit v0
    :try_end_206
    .catchall {:try_start_1fb .. :try_end_206} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto/16 :goto_298

    :catchall_20b
    move-exception p0

    :try_start_20c
    monitor-exit v0
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2154
    :cond_211
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_216
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2155
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLOSP(I)V

    .line 2156
    monitor-exit v0
    :try_end_223
    .catchall {:try_start_216 .. :try_end_223} :catchall_227

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_298

    :catchall_227
    move-exception p0

    :try_start_228
    monitor-exit v0
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_227

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2142
    :cond_22d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 2143
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_298

    .line 2111
    :cond_23a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_23d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2112
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2113
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 2114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v1, "pkg"

    .line 2115
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "reason"

    .line 2116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2119
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2126
    monitor-exit v0
    :try_end_263
    .catchall {:try_start_23d .. :try_end_263} :catchall_267

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_298

    :catchall_267
    move-exception p0

    :try_start_268
    monitor-exit v0
    :try_end_269
    .catchall {:try_start_268 .. :try_end_269} :catchall_267

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2099
    :cond_26d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 2100
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_274
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2101
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2102
    monitor-exit v0
    :try_end_27d
    .catchall {:try_start_274 .. :try_end_27d} :catchall_281

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_298

    :catchall_281
    move-exception p0

    :try_start_282
    monitor-exit v0
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_281

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 2051
    :cond_287
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_28a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2052
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 2053
    monitor-exit p1
    :try_end_295
    .catchall {:try_start_28a .. :try_end_295} :catchall_299

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_298
    :goto_298
    return-void

    :catchall_299
    move-exception p0

    :try_start_29a
    monitor-exit p1
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_299

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_2a0
    .packed-switch 0x1b
        :pswitch_152
        :pswitch_137
        :pswitch_12e
    .end packed-switch

    :pswitch_data_2aa
    .packed-switch 0x31
        :pswitch_e9
        :pswitch_e0
        :pswitch_d3
    .end packed-switch

    :pswitch_data_2b4
    .packed-switch 0x38
        :pswitch_bd
        :pswitch_a0
        :pswitch_99
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x47
        :pswitch_7c
        :pswitch_75
        :pswitch_5c
        :pswitch_4e
        :pswitch_40
    .end packed-switch
.end method
