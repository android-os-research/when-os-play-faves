.class public Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderCallsStatsShellCommand"
.end annotation


# instance fields
.field public final mPrintWriter:Ljava/io/PrintWriter;

.field public final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .registers 3

    .line 453
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    return-object v0

    .line 462
    :cond_5
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9

    .line 467
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p1, :cond_8

    return v1

    .line 472
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_198

    :goto_11
    move v2, v1

    goto/16 :goto_92

    :sswitch_14
    const-string v2, "--enable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_11

    :cond_1d
    const/16 v2, 0xa

    goto/16 :goto_92

    :sswitch_21
    const-string v2, "--disable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_11

    :cond_2a
    const/16 v2, 0x9

    goto/16 :goto_92

    :sswitch_2e
    const-string v2, "--enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_11

    :cond_37
    const/16 v2, 0x8

    goto/16 :goto_92

    :sswitch_3b
    const-string v2, "--set-sampling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_11

    :cond_44
    const/4 v2, 0x7

    goto :goto_92

    :sswitch_46
    const-string v2, "--dump-worksource-provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_11

    :cond_4f
    const/4 v2, 0x6

    goto :goto_92

    :sswitch_51
    const-string v2, "--work-source-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_11

    :cond_5a
    const/4 v2, 0x5

    goto :goto_92

    :sswitch_5c
    const-string v2, "--disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    goto :goto_11

    :cond_65
    const/4 v2, 0x4

    goto :goto_92

    :sswitch_67
    const-string v2, "--no-sampling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_11

    :cond_70
    const/4 v2, 0x3

    goto :goto_92

    :sswitch_72
    const-string v2, "--reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_11

    :cond_7b
    const/4 v2, 0x2

    goto :goto_92

    :sswitch_7d
    const-string v2, "--set-cpu-threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto :goto_11

    :cond_86
    move v2, v4

    goto :goto_92

    :sswitch_88
    const-string v2, "--history"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    goto :goto_11

    :cond_91
    move v2, v3

    :goto_92
    const-string v5, "ShellCommand"

    const-string/jumbo v6, "persist.sys.binder_calls_detailed_tracking"

    packed-switch v2, :pswitch_data_1c6

    .line 535
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_9f
    const-string p1, "1"

    .line 487
    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string p0, "Detailed tracking enabled"

    .line 489
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_196

    :pswitch_b4
    const-string p1, ""

    .line 492
    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string p0, "Detailed tracking disabled"

    .line 494
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 478
    :pswitch_c9
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto/16 :goto_196

    .line 527
    :pswitch_d4
    :try_start_d4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 528
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sampling internal is set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d4 .. :try_end_fa} :catch_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_fa} :catch_fc

    goto/16 :goto_196

    :catch_fc
    move-exception p0

    const-string p1, "--set-sampling execution failed"

    .line 531
    invoke-static {v5, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_196

    .line 497
    :pswitch_104
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p1}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 498
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmWorkSourceProvider(Lcom/android/server/BinderCallsStatsService;)Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    goto/16 :goto_196

    .line 501
    :pswitch_11c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 503
    :try_start_120
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 504
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_12d} :catch_12e

    goto :goto_196

    .line 506
    :catch_12e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UID: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_143
    const/4 p0, 0x0

    .line 481
    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_196

    .line 484
    :pswitch_148
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    goto :goto_196

    .line 474
    :pswitch_152
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    const-string p0, "binder_calls_stats reset."

    .line 475
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_196

    .line 516
    :pswitch_15d
    :try_start_15d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 517
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setCpuUsageThreshold(I)Z

    move-result p0

    if-eqz p0, :cond_196

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpu usage threshold is set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15d .. :try_end_185} :catch_186
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_185} :catch_186

    goto :goto_196

    :catch_186
    move-exception p0

    const-string p1, "--set-cpu-threshold execution failed"

    .line 521
    invoke-static {v5, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_196

    .line 511
    :pswitch_18d
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {p0}, Lcom/android/server/BinderCallsStatsService;->-$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    :cond_196
    :goto_196
    return v3

    nop

    :sswitch_data_198
    .sparse-switch
        -0x7623b50c -> :sswitch_88
        -0x696fe145 -> :sswitch_7d
        -0x60476451 -> :sswitch_72
        -0x4cd89b2d -> :sswitch_67
        -0x49c576b8 -> :sswitch_5c
        -0x1fdb9dc6 -> :sswitch_51
        -0x6594f87 -> :sswitch_46
        0xb1bfa92 -> :sswitch_3b
        0x41a27323 -> :sswitch_2e
        0x565319ef -> :sswitch_21
        0x79b4630a -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_15d
        :pswitch_152
        :pswitch_148
        :pswitch_143
        :pswitch_11c
        :pswitch_104
        :pswitch_d4
        :pswitch_c9
        :pswitch_b4
        :pswitch_9f
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 542
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "binder_calls_stats commands:"

    .line 543
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: Reset stats"

    .line 544
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --enable: Enable tracking binder calls"

    .line 545
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --disable: Disables tracking binder calls"

    .line 546
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --no-sampling: Tracks all calls"

    .line 547
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --enable-detailed-tracking: Enables detailed tracking"

    .line 548
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --disable-detailed-tracking: Disables detailed tracking"

    .line 549
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --work-source-uid <UID>: Track all binder calls from the UID"

    .line 550
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    .line 552
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --set-sampling <sampling value>: Set new sampling ratio"

    .line 553
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
