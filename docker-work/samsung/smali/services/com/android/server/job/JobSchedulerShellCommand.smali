.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "JobSchedulerShellCommand.java"


# static fields
.field public static final CMD_ERR_CONSTRAINTS:I = -0x3ea

.field public static final CMD_ERR_NO_JOB:I = -0x3e9

.field public static final CMD_ERR_NO_PACKAGE:I = -0x3e8


# instance fields
.field public mInternal:Lcom/android/server/job/JobSchedulerService;

.field public mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 40
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public final cancelJob(Ljava/io/PrintWriter;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "cancel jobs"

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v4, v0

    .line 236
    :goto_7
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_41

    const-string v3, "-u"

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "--user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 240
    :cond_38
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    :cond_41
    if-gez v4, :cond_49

    const-string p0, "Error: must specify a concrete user ID"

    .line 250
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 254
    :cond_49
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_57
    move v6, v2

    .line 258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 260
    :try_start_5c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_61

    const/4 v0, 0x1

    :cond_61
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result p0
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_6c

    .line 262
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_6c
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 91
    :cond_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-interface {p0, v1, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_12

    return-void

    .line 94
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not permitted to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doHeartbeat(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "manipulate scheduler heartbeat"

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const-string p0, "Heartbeat command is no longer supported"

    .line 359
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final getBatteryCharging(Ljava/io/PrintWriter;)I
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p0

    .line 297
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getBatteryNotLow(Ljava/io/PrintWriter;)I
    .registers 2

    .line 302
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    .line 303
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getBatterySeq(Ljava/io/PrintWriter;)I
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getBatterySeq()I

    move-result p0

    .line 291
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getJobState(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "force timeout jobs"

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 325
    :goto_6
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v0, "-u"

    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 329
    :cond_37
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_40
    const/4 v1, -0x2

    if-ne v0, v1, :cond_47

    .line 339
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 342
    :cond_47
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 348
    :try_start_57
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, p1, v1, v0, v2}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I

    move-result p1

    .line 349
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_64

    .line 352
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_64
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw p0
.end method

.method public final getStorageNotLow(Ljava/io/PrintWriter;)I
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getStorageNotLow()Z

    move-result p0

    .line 315
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getStorageSeq(Ljava/io/PrintWriter;)I
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getStorageSeq()I

    move-result p0

    .line 309
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final monitorBattery(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "change battery monitoring"

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    goto :goto_1f

    :cond_15
    const-string/jumbo v1, "off"

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v3, v2

    .line 278
    :goto_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    :try_start_23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService;->setMonitorBattery(Z)V

    if-eqz v3, :cond_30

    const-string p0, "Battery monitoring enabled"

    .line 281
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    const-string p0, "Battery monitoring disabled"

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 284
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw p0

    .line 275
    :cond_3e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 45
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_9

    move-object v2, p1

    goto :goto_b

    :cond_9
    :try_start_9
    const-string v2, ""

    .line 47
    :goto_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_116

    goto/16 :goto_b1

    :sswitch_14
    const-string/jumbo v3, "monitor-battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x3

    goto/16 :goto_b2

    :sswitch_20
    const-string v3, "get-job-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0x9

    goto/16 :goto_b2

    :sswitch_2c
    const-string v3, "get-battery-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x6

    goto/16 :goto_b2

    :sswitch_37
    const-string/jumbo v3, "reset-schedule-quota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0xc

    goto/16 :goto_b2

    :sswitch_44
    const-string/jumbo v3, "reset-execution-quota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0xb

    goto :goto_b2

    :sswitch_50
    const-string v3, "get-battery-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x4

    goto :goto_b2

    :sswitch_5a
    const-string/jumbo v3, "heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0xa

    goto :goto_b2

    :sswitch_66
    const-string v3, "get-storage-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0x8

    goto :goto_b2

    :sswitch_71
    const-string/jumbo v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x0

    goto :goto_b2

    :sswitch_7c
    const-string/jumbo v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x1

    goto :goto_b2

    :sswitch_87
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x2

    goto :goto_b2

    :sswitch_91
    const-string v3, "get-battery-charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x5

    goto :goto_b2

    :sswitch_9b
    const-string v3, "get-storage-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/4 v2, 0x7

    goto :goto_b2

    :sswitch_a5
    const-string/jumbo v3, "trigger-dock-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    const/16 v2, 0xd

    goto :goto_b2

    :cond_b1
    :goto_b1
    move v2, v1

    :goto_b2
    packed-switch v2, :pswitch_data_150

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_ff

    .line 75
    :pswitch_ba
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 73
    :pswitch_bf
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetScheduleQuota(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 71
    :pswitch_c4
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetExecutionQuota(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 69
    :pswitch_c9
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->doHeartbeat(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 67
    :pswitch_ce
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 65
    :pswitch_d3
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageNotLow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 63
    :pswitch_d8
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageSeq(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 61
    :pswitch_dd
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryNotLow(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 59
    :pswitch_e2
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryCharging(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 57
    :pswitch_e7
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatterySeq(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 55
    :pswitch_ec
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 53
    :pswitch_f1
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 51
    :pswitch_f6
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 49
    :pswitch_fb
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ff} :catch_100

    :goto_ff
    return p0

    :catch_100
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_116
    .sparse-switch
        -0x70e7e454 -> :sswitch_a5
        -0x6e03f1ea -> :sswitch_9b
        -0x6495fc38 -> :sswitch_91
        -0x5185d186 -> :sswitch_87
        -0x4e50b29f -> :sswitch_7c
        0x1ba8b -> :sswitch_71
        0x34cbf91 -> :sswitch_66
        0xbf970fc -> :sswitch_5a
        0x29e960a8 -> :sswitch_50
        0x313f4b05 -> :sswitch_44
        0x3338c000 -> :sswitch_37
        0x684a7923 -> :sswitch_2c
        0x6ac7b0ca -> :sswitch_20
        0x6e89549a -> :sswitch_14
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_f6
        :pswitch_f1
        :pswitch_ec
        :pswitch_e7
        :pswitch_e2
        :pswitch_dd
        :pswitch_d8
        :pswitch_d3
        :pswitch_ce
        :pswitch_c9
        :pswitch_c4
        :pswitch_bf
        :pswitch_ba
    .end packed-switch
.end method

.method public onHelp()V
    .registers 5

    .line 434
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Job scheduler (jobscheduler) commands:"

    .line 436
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 437
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 438
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  run [-f | --force] [-s | --satisfied] [-u | --user USER_ID] PACKAGE JOB_ID"

    .line 439
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Trigger immediate execution of a specific scheduled job. For historical"

    .line 440
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    reasons, some constraints, such as battery, are ignored when this"

    .line 441
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    command is called. If you don\'t want any constraints to be ignored,"

    .line 442
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    include the -s flag."

    .line 443
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Options:"

    .line 444
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      -f or --force: run the job even if technical constraints such as"

    .line 445
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "         connectivity are not currently met. This is incompatible with -f "

    .line 446
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "         and so an error will be reported if both are given."

    .line 447
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      -s or --satisfied: run the job only if all constraints are met."

    .line 448
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "         This is incompatible with -f and so an error will be reported"

    .line 449
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "         if both are given."

    .line 450
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      -u or --user: specify which user\'s job is to be run; the default is"

    .line 451
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "         the primary or system user"

    .line 452
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  timeout [-u | --user USER_ID] [PACKAGE] [JOB_ID]"

    .line 453
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Trigger immediate timeout of currently executing jobs, as if their."

    .line 454
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    execution timeout had expired."

    .line 455
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "         all users"

    .line 458
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  cancel [-u | --user USER_ID] PACKAGE [JOB_ID]"

    .line 459
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    .line 460
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    by that package will be canceled.  USE WITH CAUTION."

    .line 461
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  heartbeat [num]"

    .line 465
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    No longer used."

    .line 466
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  monitor-battery [on|off]"

    .line 467
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Control monitoring of all battery changes.  Off by default.  Turning"

    .line 468
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    on makes get-battery-seq useful."

    .line 469
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-battery-seq"

    .line 470
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return the last battery update sequence number that was received."

    .line 471
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-battery-charging"

    .line 472
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return whether the battery is currently considered to be charging."

    .line 473
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-battery-not-low"

    .line 474
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return whether the battery is currently considered to not be low."

    .line 475
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-storage-seq"

    .line 476
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return the last storage update sequence number that was received."

    .line 477
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-storage-not-low"

    .line 478
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return whether storage is currently considered to not be low."

    .line 479
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  get-job-state [-u | --user USER_ID] PACKAGE JOB_ID"

    .line 480
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Return the current state of a job, may be any combination of:"

    .line 481
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      pending: currently on the pending list, waiting to be active"

    .line 482
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      active: job is actively running"

    .line 483
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      user-stopped: job can\'t run because its user is stopped"

    .line 484
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      backing-up: job can\'t run because app is currently backing up its data"

    .line 485
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      no-component: job can\'t run because its component is not available"

    .line 486
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    .line 487
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      waiting: if nothing else above is printed, job not ready to run"

    .line 488
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  trigger-dock-state [idle|active]"

    .line 492
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Trigger wireless charging dock state.  Active by default."

    .line 493
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final printError(ILjava/lang/String;II)Z
    .registers 8

    const-string v0, " in package "

    const/4 v1, 0x1

    const-string v2, " / user "

    packed-switch p1, :pswitch_data_54

    const/4 p0, 0x0

    return p0

    .line 103
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Package not found: "

    .line 104
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(I)V

    return v1

    .line 111
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Could not find job "

    .line 112
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(I)V

    return v1

    .line 121
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Job "

    .line 122
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, " has functional constraints but --force not specified"

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_data_54
    .packed-switch -0x3ea
        :pswitch_36
        :pswitch_1d
        :pswitch_a
    .end packed-switch
.end method

.method public final resetExecutionQuota(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "reset execution quota"

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 369
    :goto_8
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    const-string v1, "-u"

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 373
    :cond_39
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_42
    const/4 p1, -0x2

    if-ne v1, p1, :cond_49

    .line 383
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 386
    :cond_49
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 390
    :try_start_51
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->resetExecutionQuota(Ljava/lang/String;I)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5a

    .line 392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_5a
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    throw p0
.end method

.method public final resetScheduleQuota(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo p1, "reset schedule quota"

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    :try_start_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->resetScheduleQuota()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw p0
.end method

.method public final runJob(Ljava/io/PrintWriter;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "force scheduled jobs"

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v5, v0

    move v7, v5

    move v8, v7

    .line 144
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_85

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_cc

    :goto_18
    move v3, v2

    goto :goto_5b

    :sswitch_1a
    const-string v3, "--user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_18

    :cond_23
    const/4 v3, 0x5

    goto :goto_5b

    :sswitch_25
    const-string v3, "-u"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v3, 0x4

    goto :goto_5b

    :sswitch_30
    const-string v3, "-s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_18

    :cond_39
    const/4 v3, 0x3

    goto :goto_5b

    :sswitch_3b
    const-string v3, "-f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_18

    :cond_44
    const/4 v3, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v3, "--satisfied"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_18

    :cond_4f
    move v3, v4

    goto :goto_5b

    :sswitch_51
    const-string v3, "--force"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_18

    :cond_5a
    move v3, v0

    :goto_5b
    packed-switch v3, :pswitch_data_e6

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: unknown option \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 158
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_9

    :pswitch_81
    move v5, v4

    goto :goto_9

    :pswitch_83
    move v7, v4

    goto :goto_9

    :cond_85
    if-eqz v7, :cond_8f

    if-eqz v5, :cond_8f

    const-string p0, "Cannot specify both --force and --satisfied"

    .line 168
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 172
    :cond_8f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 177
    :try_start_9f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    move-object v2, v0

    move v3, v8

    move v4, v9

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;IIZZ)I

    move-result v1

    .line 178
    invoke-virtual {p0, v1, v0, v8, v9}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z

    move-result p0
    :try_end_ad
    .catchall {:try_start_9f .. :try_end_ad} :catchall_c6

    if-eqz p0, :cond_b3

    .line 191
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_b3
    :try_start_b3
    const-string p0, "Running job"

    .line 183
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v7, :cond_bf

    const-string p0, " [FORCED]"

    .line 185
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    :cond_bf
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_c6

    .line 191
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_c6
    move-exception p0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    throw p0

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x60ebf6b5 -> :sswitch_51
        -0x39cf9d6e -> :sswitch_46
        0x5d9 -> :sswitch_3b
        0x5e6 -> :sswitch_30
        0x5e8 -> :sswitch_25
        0x4f7b216b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_83
        :pswitch_81
        :pswitch_83
        :pswitch_81
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method public final timeout(Ljava/io/PrintWriter;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "force timeout jobs"

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    const/4 v0, -0x1

    move v1, v0

    .line 201
    :goto_7
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    const-string v1, "-u"

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 205
    :cond_37
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_40
    const/4 v2, -0x2

    if-ne v1, v2, :cond_47

    .line 215
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :cond_47
    move v5, v1

    .line 218
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_56
    move v7, v0

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 224
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_61

    const/4 p0, 0x1

    goto :goto_62

    :cond_61
    const/4 p0, 0x0

    :goto_62
    move v6, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result p0
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_6c

    .line 226
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_6c
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    throw p0
.end method

.method public final triggerDockState(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo p1, "trigger wireless charging dock state"

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "idle"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    goto :goto_1f

    :cond_16
    const-string v0, "active"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v2, v1

    .line 423
    :goto_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 425
    :try_start_23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService;->triggerDockState(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 427
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    throw p0

    .line 419
    :cond_31
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
