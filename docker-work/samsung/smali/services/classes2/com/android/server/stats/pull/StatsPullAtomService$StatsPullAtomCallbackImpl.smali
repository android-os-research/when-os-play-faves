.class public Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-wide/32 v0, 0x80000

    .line 468
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1d
    packed-switch p1, :pswitch_data_520

    .line 738
    :pswitch_20
    :try_start_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_507

    .line 736
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 734
    :pswitch_2e
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)I

    move-result p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 732
    :pswitch_38
    :try_start_38
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result p0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 730
    :pswitch_42
    :try_start_42
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 728
    :pswitch_4c
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 566
    :pswitch_56
    :try_start_56
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result p0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 713
    :pswitch_60
    :try_start_60
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_505

    .line 714
    :try_start_67
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_72

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_72
    move-exception p0

    .line 715
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw p0

    .line 562
    :pswitch_75
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result p0
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 726
    :pswitch_7f
    :try_start_7f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result p0
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 669
    :pswitch_89
    :try_start_89
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_505

    .line 670
    :try_start_90
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_9b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_9b
    move-exception p0

    .line 671
    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw p0

    .line 510
    :pswitch_9e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    move-result p0
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 502
    :pswitch_a8
    :try_start_a8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_505

    .line 503
    :try_start_af
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_ba

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_ba
    move-exception p0

    .line 504
    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw p0

    .line 492
    :pswitch_bd
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_505

    .line 493
    :try_start_c4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_cf

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_cf
    move-exception p0

    .line 494
    :try_start_d0
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    :try_start_d1
    throw p0

    .line 564
    :pswitch_d2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result p0
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 709
    :pswitch_dc
    :try_start_dc
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_505

    .line 710
    :try_start_e3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_ee

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_ee
    move-exception p0

    .line 711
    :try_start_ef
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw p0

    .line 705
    :pswitch_f1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_505

    .line 706
    :try_start_f8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_103

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_103
    move-exception p0

    .line 707
    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    :try_start_105
    throw p0

    .line 554
    :pswitch_106
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_505

    .line 555
    :try_start_10d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_118

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_118
    move-exception p0

    .line 556
    :try_start_119
    monitor-exit v2
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    :try_start_11a
    throw p0

    .line 689
    :pswitch_11b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_505

    .line 690
    :try_start_122
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_129
    .catchall {:try_start_122 .. :try_end_129} :catchall_12d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_12d
    move-exception p0

    .line 691
    :try_start_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw p0

    .line 693
    :pswitch_130
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_505

    .line 694
    :try_start_137
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_142

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_142
    move-exception p0

    .line 695
    :try_start_143
    monitor-exit v2
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw p0

    .line 548
    :pswitch_145
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)I

    move-result p0
    :try_end_14b
    .catchall {:try_start_144 .. :try_end_14b} :catchall_505

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 558
    :pswitch_14f
    :try_start_14f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_156
    .catchall {:try_start_14f .. :try_end_156} :catchall_505

    .line 559
    :try_start_156
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_156 .. :try_end_15d} :catchall_161

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_161
    move-exception p0

    .line 560
    :try_start_162
    monitor-exit v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    :try_start_163
    throw p0

    .line 685
    :pswitch_164
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_16b
    .catchall {:try_start_163 .. :try_end_16b} :catchall_505

    .line 686
    :try_start_16b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_172
    .catchall {:try_start_16b .. :try_end_172} :catchall_176

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_176
    move-exception p0

    .line 687
    :try_start_177
    monitor-exit v2
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    :try_start_178
    throw p0

    .line 572
    :pswitch_179
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_180
    .catchall {:try_start_178 .. :try_end_180} :catchall_505

    .line 573
    :try_start_180
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_18b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_18b
    move-exception p0

    .line 574
    :try_start_18c
    monitor-exit v2
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    :try_start_18d
    throw p0

    .line 681
    :pswitch_18e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_195
    .catchall {:try_start_18d .. :try_end_195} :catchall_505

    .line 682
    :try_start_195
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_19c
    .catchall {:try_start_195 .. :try_end_19c} :catchall_1a0

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1a0
    move-exception p0

    .line 683
    :try_start_1a1
    monitor-exit v2
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a0

    :try_start_1a2
    throw p0

    .line 677
    :pswitch_1a3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1aa
    .catchall {:try_start_1a2 .. :try_end_1aa} :catchall_505

    .line 678
    :try_start_1aa
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_1b5

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1b5
    move-exception p0

    .line 679
    :try_start_1b6
    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_1b5

    :try_start_1b7
    throw p0

    .line 550
    :pswitch_1b8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1bf
    .catchall {:try_start_1b7 .. :try_end_1bf} :catchall_505

    .line 551
    :try_start_1bf
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1c6
    .catchall {:try_start_1bf .. :try_end_1c6} :catchall_1ca

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1ca
    move-exception p0

    .line 552
    :try_start_1cb
    monitor-exit v2
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    :try_start_1cc
    throw p0

    .line 673
    :pswitch_1cd
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1d4
    .catchall {:try_start_1cc .. :try_end_1d4} :catchall_505

    .line 674
    :try_start_1d4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1db
    .catchall {:try_start_1d4 .. :try_end_1db} :catchall_1df

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1df
    move-exception p0

    .line 675
    :try_start_1e0
    monitor-exit v2
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1df

    :try_start_1e1
    throw p0

    .line 665
    :pswitch_1e2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e9
    .catchall {:try_start_1e1 .. :try_end_1e9} :catchall_505

    .line 666
    :try_start_1e9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_1f4

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1f4
    move-exception p0

    .line 667
    :try_start_1f5
    monitor-exit v2
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    :try_start_1f6
    throw p0

    .line 661
    :pswitch_1f7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1fe
    .catchall {:try_start_1f6 .. :try_end_1fe} :catchall_505

    .line 662
    :try_start_1fe
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_205
    .catchall {:try_start_1fe .. :try_end_205} :catchall_209

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_209
    move-exception p0

    .line 663
    :try_start_20a
    monitor-exit v2
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_209

    :try_start_20b
    throw p0

    .line 655
    :pswitch_20c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_213
    .catchall {:try_start_20b .. :try_end_213} :catchall_505

    .line 656
    :try_start_213
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_21a
    .catchall {:try_start_213 .. :try_end_21a} :catchall_21e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_21e
    move-exception p0

    .line 657
    :try_start_21f
    monitor-exit v2
    :try_end_220
    .catchall {:try_start_21f .. :try_end_220} :catchall_21e

    :try_start_220
    throw p0

    .line 609
    :pswitch_221
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_228
    .catchall {:try_start_220 .. :try_end_228} :catchall_505

    .line 610
    :try_start_228
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x4

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_230
    .catchall {:try_start_228 .. :try_end_230} :catchall_234

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_234
    move-exception p0

    .line 612
    :try_start_235
    monitor-exit v2
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_234

    :try_start_236
    throw p0

    .line 647
    :pswitch_237
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_23e
    .catchall {:try_start_236 .. :try_end_23e} :catchall_505

    .line 648
    :try_start_23e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_245
    .catchall {:try_start_23e .. :try_end_245} :catchall_249

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_249
    move-exception p0

    .line 649
    :try_start_24a
    monitor-exit v2
    :try_end_24b
    .catchall {:try_start_24a .. :try_end_24b} :catchall_249

    :try_start_24b
    throw p0

    .line 643
    :pswitch_24c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_253
    .catchall {:try_start_24b .. :try_end_253} :catchall_505

    .line 644
    :try_start_253
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_25a
    .catchall {:try_start_253 .. :try_end_25a} :catchall_25e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_25e
    move-exception p0

    .line 645
    :try_start_25f
    monitor-exit v2
    :try_end_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_25e

    :try_start_260
    throw p0

    .line 651
    :pswitch_261
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_268
    .catchall {:try_start_260 .. :try_end_268} :catchall_505

    .line 652
    :try_start_268
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_26f
    .catchall {:try_start_268 .. :try_end_26f} :catchall_273

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_273
    move-exception p0

    .line 653
    :try_start_274
    monitor-exit v2
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_273

    :try_start_275
    throw p0

    .line 544
    :pswitch_276
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_27d
    .catchall {:try_start_275 .. :try_end_27d} :catchall_505

    .line 545
    :try_start_27d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_284
    .catchall {:try_start_27d .. :try_end_284} :catchall_288

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_288
    move-exception p0

    .line 546
    :try_start_289
    monitor-exit v2
    :try_end_28a
    .catchall {:try_start_289 .. :try_end_28a} :catchall_288

    :try_start_28a
    throw p0

    .line 639
    :pswitch_28b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_292
    .catchall {:try_start_28a .. :try_end_292} :catchall_505

    .line 640
    :try_start_292
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_299
    .catchall {:try_start_292 .. :try_end_299} :catchall_29d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_29d
    move-exception p0

    .line 641
    :try_start_29e
    monitor-exit v2
    :try_end_29f
    .catchall {:try_start_29e .. :try_end_29f} :catchall_29d

    :try_start_29f
    throw p0

    .line 635
    :pswitch_2a0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2a7
    .catchall {:try_start_29f .. :try_end_2a7} :catchall_505

    .line 636
    :try_start_2a7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2ae
    .catchall {:try_start_2a7 .. :try_end_2ae} :catchall_2b2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2b2
    move-exception p0

    .line 637
    :try_start_2b3
    monitor-exit v2
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_2b2

    :try_start_2b4
    throw p0

    .line 631
    :pswitch_2b5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2bc
    .catchall {:try_start_2b4 .. :try_end_2bc} :catchall_505

    .line 632
    :try_start_2bc
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2c3
    .catchall {:try_start_2bc .. :try_end_2c3} :catchall_2c7

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2c7
    move-exception p0

    .line 633
    :try_start_2c8
    monitor-exit v2
    :try_end_2c9
    .catchall {:try_start_2c8 .. :try_end_2c9} :catchall_2c7

    :try_start_2c9
    throw p0

    .line 618
    :pswitch_2ca
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d1
    .catchall {:try_start_2c9 .. :try_end_2d1} :catchall_505

    .line 619
    :try_start_2d1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x2

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2d9
    .catchall {:try_start_2d1 .. :try_end_2d9} :catchall_2dd

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2dd
    move-exception p0

    .line 621
    :try_start_2de
    monitor-exit v2
    :try_end_2df
    .catchall {:try_start_2de .. :try_end_2df} :catchall_2dd

    :try_start_2df
    throw p0

    .line 627
    :pswitch_2e0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e7
    .catchall {:try_start_2df .. :try_end_2e7} :catchall_505

    .line 628
    :try_start_2e7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2ee
    .catchall {:try_start_2e7 .. :try_end_2ee} :catchall_2f2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2f2
    move-exception p0

    .line 629
    :try_start_2f3
    monitor-exit v2
    :try_end_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_2f2

    :try_start_2f4
    throw p0

    .line 623
    :pswitch_2f5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2fc
    .catchall {:try_start_2f4 .. :try_end_2fc} :catchall_505

    .line 624
    :try_start_2fc
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_303
    .catchall {:try_start_2fc .. :try_end_303} :catchall_307

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_307
    move-exception p0

    .line 625
    :try_start_308
    monitor-exit v2
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_307

    :try_start_309
    throw p0

    .line 604
    :pswitch_30a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_311
    .catchall {:try_start_309 .. :try_end_311} :catchall_505

    .line 605
    :try_start_311
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x1

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_319
    .catchall {:try_start_311 .. :try_end_319} :catchall_31d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_31d
    move-exception p0

    .line 607
    :try_start_31e
    monitor-exit v2
    :try_end_31f
    .catchall {:try_start_31e .. :try_end_31f} :catchall_31d

    :try_start_31f
    throw p0

    .line 614
    :pswitch_320
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_327
    .catchall {:try_start_31f .. :try_end_327} :catchall_505

    .line 615
    :try_start_327
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/16 v3, 0x1f

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_330
    .catchall {:try_start_327 .. :try_end_330} :catchall_334

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_334
    move-exception p0

    .line 616
    :try_start_335
    monitor-exit v2
    :try_end_336
    .catchall {:try_start_335 .. :try_end_336} :catchall_334

    :try_start_336
    throw p0

    .line 600
    :pswitch_337
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_33e
    .catchall {:try_start_336 .. :try_end_33e} :catchall_505

    .line 601
    :try_start_33e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_345
    .catchall {:try_start_33e .. :try_end_345} :catchall_349

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_349
    move-exception p0

    .line 602
    :try_start_34a
    monitor-exit v2
    :try_end_34b
    .catchall {:try_start_34a .. :try_end_34b} :catchall_349

    :try_start_34b
    throw p0

    .line 596
    :pswitch_34c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_353
    .catchall {:try_start_34b .. :try_end_353} :catchall_505

    .line 597
    :try_start_353
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_35a
    .catchall {:try_start_353 .. :try_end_35a} :catchall_35e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_35e
    move-exception p0

    .line 598
    :try_start_35f
    monitor-exit v2
    :try_end_360
    .catchall {:try_start_35f .. :try_end_360} :catchall_35e

    :try_start_360
    throw p0

    .line 592
    :pswitch_361
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_368
    .catchall {:try_start_360 .. :try_end_368} :catchall_505

    .line 593
    :try_start_368
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_36f
    .catchall {:try_start_368 .. :try_end_36f} :catchall_373

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_373
    move-exception p0

    .line 594
    :try_start_374
    monitor-exit v2
    :try_end_375
    .catchall {:try_start_374 .. :try_end_375} :catchall_373

    :try_start_375
    throw p0

    .line 588
    :pswitch_376
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_37d
    .catchall {:try_start_375 .. :try_end_37d} :catchall_505

    .line 589
    :try_start_37d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_384
    .catchall {:try_start_37d .. :try_end_384} :catchall_388

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_388
    move-exception p0

    .line 590
    :try_start_389
    monitor-exit v2
    :try_end_38a
    .catchall {:try_start_389 .. :try_end_38a} :catchall_388

    :try_start_38a
    throw p0

    .line 584
    :pswitch_38b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_392
    .catchall {:try_start_38a .. :try_end_392} :catchall_505

    .line 585
    :try_start_392
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_399
    .catchall {:try_start_392 .. :try_end_399} :catchall_39d

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_39d
    move-exception p0

    .line 586
    :try_start_39e
    monitor-exit v2
    :try_end_39f
    .catchall {:try_start_39e .. :try_end_39f} :catchall_39d

    :try_start_39f
    throw p0

    .line 580
    :pswitch_3a0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a7
    .catchall {:try_start_39f .. :try_end_3a7} :catchall_505

    .line 581
    :try_start_3a7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3ae
    .catchall {:try_start_3a7 .. :try_end_3ae} :catchall_3b2

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3b2
    move-exception p0

    .line 582
    :try_start_3b3
    monitor-exit v2
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_3b2

    :try_start_3b4
    throw p0

    .line 576
    :pswitch_3b5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3bc
    .catchall {:try_start_3b4 .. :try_end_3bc} :catchall_505

    .line 577
    :try_start_3bc
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3c3
    .catchall {:try_start_3bc .. :try_end_3c3} :catchall_3c7

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3c7
    move-exception p0

    .line 578
    :try_start_3c8
    monitor-exit v2
    :try_end_3c9
    .catchall {:try_start_3c8 .. :try_end_3c9} :catchall_3c7

    :try_start_3c9
    throw p0

    .line 568
    :pswitch_3ca
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3d1
    .catchall {:try_start_3c9 .. :try_end_3d1} :catchall_505

    .line 569
    :try_start_3d1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3d8
    .catchall {:try_start_3d1 .. :try_end_3d8} :catchall_3dc

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3dc
    move-exception p0

    .line 570
    :try_start_3dd
    monitor-exit v2
    :try_end_3de
    .catchall {:try_start_3dd .. :try_end_3de} :catchall_3dc

    :try_start_3de
    throw p0

    .line 701
    :pswitch_3df
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3e6
    .catchall {:try_start_3de .. :try_end_3e6} :catchall_505

    .line 702
    :try_start_3e6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3ed
    .catchall {:try_start_3e6 .. :try_end_3ed} :catchall_3f1

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3f1
    move-exception p0

    .line 703
    :try_start_3f2
    monitor-exit v2
    :try_end_3f3
    .catchall {:try_start_3f2 .. :try_end_3f3} :catchall_3f1

    :try_start_3f3
    throw p0

    .line 516
    :pswitch_3f4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3fb
    .catchall {:try_start_3f3 .. :try_end_3fb} :catchall_505

    .line 517
    :try_start_3fb
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_402
    .catchall {:try_start_3fb .. :try_end_402} :catchall_406

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_406
    move-exception p0

    .line 518
    :try_start_407
    monitor-exit v2
    :try_end_408
    .catchall {:try_start_407 .. :try_end_408} :catchall_406

    :try_start_408
    throw p0

    .line 512
    :pswitch_409
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_410
    .catchall {:try_start_408 .. :try_end_410} :catchall_505

    .line 513
    :try_start_410
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_417
    .catchall {:try_start_410 .. :try_end_417} :catchall_41b

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_41b
    move-exception p0

    .line 514
    :try_start_41c
    monitor-exit v2
    :try_end_41d
    .catchall {:try_start_41c .. :try_end_41d} :catchall_41b

    :try_start_41d
    throw p0

    .line 536
    :pswitch_41e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_425
    .catchall {:try_start_41d .. :try_end_425} :catchall_505

    .line 537
    :try_start_425
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_42c
    .catchall {:try_start_425 .. :try_end_42c} :catchall_430

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_430
    move-exception p0

    .line 538
    :try_start_431
    monitor-exit v2
    :try_end_432
    .catchall {:try_start_431 .. :try_end_432} :catchall_430

    :try_start_432
    throw p0

    .line 532
    :pswitch_433
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_43a
    .catchall {:try_start_432 .. :try_end_43a} :catchall_505

    .line 533
    :try_start_43a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_441
    .catchall {:try_start_43a .. :try_end_441} :catchall_445

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_445
    move-exception p0

    .line 534
    :try_start_446
    monitor-exit v2
    :try_end_447
    .catchall {:try_start_446 .. :try_end_447} :catchall_445

    :try_start_447
    throw p0

    .line 540
    :pswitch_448
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_44f
    .catchall {:try_start_447 .. :try_end_44f} :catchall_505

    .line 541
    :try_start_44f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_456
    .catchall {:try_start_44f .. :try_end_456} :catchall_45a

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_45a
    move-exception p0

    .line 542
    :try_start_45b
    monitor-exit v2
    :try_end_45c
    .catchall {:try_start_45b .. :try_end_45c} :catchall_45a

    :try_start_45c
    throw p0

    .line 524
    :pswitch_45d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_464
    .catchall {:try_start_45c .. :try_end_464} :catchall_505

    .line 525
    :try_start_464
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_46b
    .catchall {:try_start_464 .. :try_end_46b} :catchall_46f

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_46f
    move-exception p0

    .line 526
    :try_start_470
    monitor-exit v2
    :try_end_471
    .catchall {:try_start_470 .. :try_end_471} :catchall_46f

    :try_start_471
    throw p0

    .line 520
    :pswitch_472
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_479
    .catchall {:try_start_471 .. :try_end_479} :catchall_505

    .line 521
    :try_start_479
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_480
    .catchall {:try_start_479 .. :try_end_480} :catchall_484

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_484
    move-exception p0

    .line 522
    :try_start_485
    monitor-exit v2
    :try_end_486
    .catchall {:try_start_485 .. :try_end_486} :catchall_484

    :try_start_486
    throw p0

    .line 506
    :pswitch_487
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_48e
    .catchall {:try_start_486 .. :try_end_48e} :catchall_505

    .line 507
    :try_start_48e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_495
    .catchall {:try_start_48e .. :try_end_495} :catchall_499

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_499
    move-exception p0

    .line 508
    :try_start_49a
    monitor-exit v2
    :try_end_49b
    .catchall {:try_start_49a .. :try_end_49b} :catchall_499

    :try_start_49b
    throw p0

    .line 496
    :pswitch_49c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4a3
    .catchall {:try_start_49b .. :try_end_4a3} :catchall_505

    .line 497
    :try_start_4a3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4aa
    .catchall {:try_start_4a3 .. :try_end_4aa} :catchall_4ae

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4ae
    move-exception p0

    .line 498
    :try_start_4af
    monitor-exit v2
    :try_end_4b0
    .catchall {:try_start_4af .. :try_end_4b0} :catchall_4ae

    :try_start_4b0
    throw p0

    .line 528
    :pswitch_4b1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4b8
    .catchall {:try_start_4b0 .. :try_end_4b8} :catchall_505

    .line 529
    :try_start_4b8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4bf
    .catchall {:try_start_4b8 .. :try_end_4bf} :catchall_4c3

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4c3
    move-exception p0

    .line 530
    :try_start_4c4
    monitor-exit v2
    :try_end_4c5
    .catchall {:try_start_4c4 .. :try_end_4c5} :catchall_4c3

    :try_start_4c5
    throw p0

    .line 484
    :pswitch_4c6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4cd
    .catchall {:try_start_4c5 .. :try_end_4cd} :catchall_505

    .line 485
    :try_start_4cd
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4d4
    .catchall {:try_start_4cd .. :try_end_4d4} :catchall_4d8

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4d8
    move-exception p0

    .line 486
    :try_start_4d9
    monitor-exit v2
    :try_end_4da
    .catchall {:try_start_4d9 .. :try_end_4da} :catchall_4d8

    :try_start_4da
    throw p0

    .line 488
    :pswitch_4db
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4e2
    .catchall {:try_start_4da .. :try_end_4e2} :catchall_505

    .line 489
    :try_start_4e2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4e9
    .catchall {:try_start_4e2 .. :try_end_4e9} :catchall_4ed

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4ed
    move-exception p0

    .line 490
    :try_start_4ee
    monitor-exit v2
    :try_end_4ef
    .catchall {:try_start_4ee .. :try_end_4ef} :catchall_4ed

    :try_start_4ef
    throw p0

    .line 480
    :pswitch_4f0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4f7
    .catchall {:try_start_4ef .. :try_end_4f7} :catchall_505

    .line 481
    :try_start_4f7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4fe
    .catchall {:try_start_4f7 .. :try_end_4fe} :catchall_502

    .line 741
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_502
    move-exception p0

    .line 482
    :try_start_503
    monitor-exit v2
    :try_end_504
    .catchall {:try_start_503 .. :try_end_504} :catchall_502

    :try_start_504
    throw p0

    :catchall_505
    move-exception p0

    goto :goto_51c

    .line 738
    :goto_507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_51c
    .catchall {:try_start_504 .. :try_end_51c} :catchall_505

    .line 741
    :goto_51c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    throw p0

    :pswitch_data_520
    .packed-switch 0x2710
        :pswitch_4f0
        :pswitch_4f0
        :pswitch_4f0
        :pswitch_4f0
        :pswitch_4db
        :pswitch_20
        :pswitch_4c6
        :pswitch_4b1
        :pswitch_20
        :pswitch_49c
        :pswitch_487
        :pswitch_472
        :pswitch_45d
        :pswitch_448
        :pswitch_433
        :pswitch_41e
        :pswitch_409
        :pswitch_3f4
        :pswitch_20
        :pswitch_3df
        :pswitch_3df
        :pswitch_3ca
        :pswitch_3b5
        :pswitch_3a0
        :pswitch_38b
        :pswitch_376
        :pswitch_361
        :pswitch_34c
        :pswitch_337
        :pswitch_320
        :pswitch_3df
        :pswitch_30a
        :pswitch_2f5
        :pswitch_2e0
        :pswitch_2ca
        :pswitch_2b5
        :pswitch_20
        :pswitch_2a0
        :pswitch_20
        :pswitch_28b
        :pswitch_20
        :pswitch_20
        :pswitch_276
        :pswitch_3df
        :pswitch_261
        :pswitch_3df
        :pswitch_24c
        :pswitch_237
        :pswitch_221
        :pswitch_20c
        :pswitch_1f7
        :pswitch_20
        :pswitch_1e2
        :pswitch_1cd
        :pswitch_20
        :pswitch_20
        :pswitch_1b8
        :pswitch_1a3
        :pswitch_18e
        :pswitch_179
        :pswitch_164
        :pswitch_14f
        :pswitch_20
        :pswitch_20
        :pswitch_145
        :pswitch_20
        :pswitch_130
        :pswitch_1f7
        :pswitch_20
        :pswitch_11b
        :pswitch_106
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_f1
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_dc
        :pswitch_20
        :pswitch_4f0
        :pswitch_4f0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_d2
        :pswitch_20
        :pswitch_20
        :pswitch_bd
        :pswitch_a8
        :pswitch_20
        :pswitch_9e
        :pswitch_20
        :pswitch_4f0
        :pswitch_20
        :pswitch_89
        :pswitch_7f
        :pswitch_7f
        :pswitch_75
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_60
        :pswitch_20
        :pswitch_20
        :pswitch_56
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_20
        :pswitch_4c
        :pswitch_42
        :pswitch_20
        :pswitch_38
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2e
        :pswitch_24
    .end packed-switch
.end method
