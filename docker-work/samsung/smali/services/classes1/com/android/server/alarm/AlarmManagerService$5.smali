.class public Lcom/android/server/alarm/AlarmManagerService$5;
.super Landroid/app/IAlarmManager$Stub;
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
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 3262
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canScheduleExactAlarms(Ljava/lang/String;)Z
    .registers 7

    .line 3456
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 3457
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3458
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v0, v2, :cond_3f

    .line 3463
    invoke-static {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    return v1

    .line 3466
    :cond_24
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3467
    invoke-virtual {v0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3468
    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :cond_3e
    :goto_3e
    return v1

    .line 3460
    :cond_3f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query canScheduleExactAlarms for package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public currentNetworkTimeMillis()J
    .registers 3

    .line 3588
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object p0

    .line 3589
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 3591
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 3593
    :cond_15
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Missing NTP fix"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 3606
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3608
    :cond_f
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x0

    aget-object p3, p3, v0

    const-string v0, "--proto"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 3609
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2f

    .line 3611
    :cond_23
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    :goto_2f
    return-void
.end method

.method public getConfigVersion()I
    .registers 4

    .line 3599
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "getConfigVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->getVersion()I

    move-result p0

    return p0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 11

    .line 3565
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getNextAlarmClock"

    const/4 v8, 0x0

    move v4, p1

    .line 3565
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3568
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNextAlarmClocks(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .line 3574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v0, v2, :cond_27

    .line 3579
    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3580
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "getNextAlarmClock"

    move v6, p1

    .line 3579
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3582
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarmClocksImpl(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3575
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial : getNextAlarmClocks from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    .line 3576
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .line 3560
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .registers 7

    .line 3473
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 3474
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_1e

    .line 3475
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "hasScheduleExactAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    :cond_1e
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    if-eq v0, p2, :cond_52

    .line 3479
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_52

    .line 3480
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query hasScheduleExactAlarm for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    :goto_52
    if-lez p2, :cond_5b

    .line 3483
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_5c

    :cond_5b
    const/4 p0, 0x0

    :goto_5c
    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 3619
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$ShellCmd-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    const-string p0, "AlarmManager"

    const-string/jumbo p1, "remove() with no intent or listener"

    .line 3550
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3553
    :cond_d
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3554
    :try_start_12
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 3555
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 38

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move/from16 v12, p2

    move-wide/from16 v13, p3

    .line 3268
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCallingUid()I

    move-result v11

    .line 3269
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3272
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 3273
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object v2

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move v13, v10

    move v10, v11

    move v14, v11

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/alarm/AppSyncWrapper;->isAdjustableAlarm(IJJJILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3274
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppSync(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AppSyncWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncWrapper;->getWindowLength()J

    move-result-wide v2

    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync window "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " --->> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for alarm by <"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppSyncInfo"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :cond_77
    move-wide/from16 v4, p5

    goto :goto_7e

    :cond_7a
    move-wide/from16 v4, p5

    move v13, v10

    move v14, v11

    :goto_7e
    move-wide v2, v4

    .line 3284
    :goto_7f
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v15, v4, v5, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v14, v0, :cond_2cd

    cmp-long v0, p7, v4

    if-eqz v0, :cond_9c

    if-nez p11, :cond_94

    goto :goto_9c

    .line 3292
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_9c
    if-eqz p13, :cond_af

    .line 3296
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3298
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "android.permission.UPDATE_DEVICE_STATS"

    const-string v8, "AlarmManager.set"

    .line 3296
    invoke-virtual {v0, v7, v6, v14, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_af
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_c0

    const/16 v0, 0x3e8

    if-eq v14, v0, :cond_bc

    and-int/lit8 v0, p9, -0x11

    move-wide v6, v2

    move v2, v0

    goto :goto_c3

    :cond_bc
    move/from16 v2, p9

    move-wide v6, v4

    goto :goto_c3

    :cond_c0
    move-wide v6, v2

    move/from16 v2, p9

    :goto_c3
    and-int/lit8 v0, v2, 0x10

    const-string v3, "AlarmManager"

    const/4 v8, 0x2

    if-nez v0, :cond_187

    if-nez p14, :cond_187

    cmp-long v0, v6, v4

    if-nez v0, :cond_187

    if-eq v12, v8, :cond_d4

    if-nez v12, :cond_187

    :cond_d4
    if-eqz p10, :cond_dc

    .line 3316
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_dd

    :cond_dc
    move-object v10, v15

    :goto_dd
    if-eqz p10, :cond_11a

    .line 3319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3321
    :try_start_e3
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 3322
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f1} :catch_f9
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_f7

    goto :goto_f3

    :cond_f2
    const/4 v0, 0x0

    .line 3326
    :goto_f3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11b

    :catchall_f7
    move-exception v0

    goto :goto_116

    :catch_f9
    move-exception v0

    .line 3324
    :try_start_fa
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarmException: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_fa .. :try_end_112} :catchall_f7

    .line 3326
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11a

    :goto_116
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3327
    throw v0

    :cond_11a
    :goto_11a
    const/4 v0, 0x0

    .line 3329
    :goto_11b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v8

    invoke-virtual {v8, v10, v0}, Lcom/android/server/am/MARsPolicyManager;->isAlarmForceSetWindow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_187

    .line 3330
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-object v11, v10

    move-wide/from16 v9, p3

    invoke-static {v8, v9, v10, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mconvertToElapsed(Lcom/android/server/alarm/AlarmManagerService;JI)J

    move-result-wide v16

    .line 3331
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x2

    move-wide/from16 v20, v6

    .line 3332
    div-long v6, v16, v18

    cmp-long v8, v6, v4

    if-lez v8, :cond_18b

    sub-long v4, v9, v6

    .line 3337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p9, v11

    const-string v11, "force change alarm method to setWindow() callingUid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", sourcePackage="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", action="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", origTriggerAtTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", triggerAtTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", windowLength="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    :cond_187
    move-wide/from16 v9, p3

    move-wide/from16 v20, v6

    :cond_18b
    move-wide v4, v9

    move-wide/from16 v6, v20

    :goto_18e
    and-int/lit8 v0, v2, -0x2b

    if-eqz p14, :cond_197

    or-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x0

    goto :goto_1c1

    :cond_197
    if-nez p13, :cond_1c1

    .line 3362
    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-nez v2, :cond_1bd

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 3363
    invoke-static {v14, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_1bd

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v2

    if-eqz v2, :cond_1c1

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;

    move-result-object v2

    .line 3365
    invoke-virtual {v2, v14}, Lcom/android/server/AppStateTrackerImpl;->isUidPowerSaveUserExempt(I)Z

    move-result v2

    if-eqz v2, :cond_1c1

    :cond_1bd
    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x45

    :cond_1c1
    :goto_1c1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1c7

    const/4 v2, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v2, 0x0

    :goto_1c8
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_1d0

    const/4 v10, 0x1

    goto :goto_1d1

    :cond_1d0
    const/4 v10, 0x0

    :goto_1d1
    const/4 v11, -0x1

    and-int/lit8 v16, v0, 0x40

    if-eqz v16, :cond_1ef

    .line 3378
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v8, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    const-string v9, "AlarmManager.setPrioritized"

    .line 3378
    invoke-virtual {v2, v8, v3, v14, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    and-int/lit8 v0, v0, -0x5

    :cond_1e9
    move/from16 v18, v11

    const/16 v17, 0x0

    goto/16 :goto_2ac

    :cond_1ef
    if-nez v10, :cond_1f3

    if-eqz v2, :cond_1e9

    .line 3387
    :cond_1f3
    invoke-static {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_21c

    xor-int/lit8 v13, v10, 0x1

    if-eqz v10, :cond_211

    if-eqz p14, :cond_208

    .line 3391
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_219

    .line 3392
    :cond_208
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_219

    .line 3394
    :cond_211
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    :goto_219
    move/from16 v16, v10

    goto :goto_232

    :cond_21c
    if-eqz v2, :cond_227

    .line 3399
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_228

    :cond_227
    const/4 v8, 0x0

    :goto_228
    move v13, v2

    if-eqz v10, :cond_230

    move-object v11, v8

    const/4 v8, 0x2

    const/16 v16, 0x0

    goto :goto_237

    :cond_230
    const/16 v16, 0x0

    :goto_232
    move/from16 v22, v11

    move-object v11, v8

    move/from16 v8, v22

    :goto_237
    if-eqz v16, :cond_2a1

    .line 3405
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v9, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_243

    const/4 v8, 0x3

    goto :goto_2a1

    .line 3407
    :cond_243
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v9, v15, v14}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_24e

    move v2, v13

    const/4 v8, 0x0

    goto :goto_2a2

    .line 3410
    :cond_24e
    iget-object v9, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v9, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v9

    if-eqz v9, :cond_258

    const/4 v8, 0x1

    goto :goto_28d

    .line 3413
    :cond_258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caller "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " needs to hold "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " or "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.USE_EXACT_ALARM"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to set exact alarms."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3418
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->CRASH_NON_CLOCK_APPS:Z

    if-nez v11, :cond_29b

    .line 3421
    invoke-static {v3, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28d
    if-eqz v2, :cond_298

    .line 3434
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_299

    :cond_298
    const/4 v9, 0x0

    :goto_299
    move-object v11, v9

    goto :goto_2a2

    .line 3419
    :cond_29b
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a1
    :goto_2a1
    move v2, v13

    :goto_2a2
    if-eqz v2, :cond_2a8

    and-int/lit8 v0, v0, -0x5

    or-int/lit8 v0, v0, 0x20

    :cond_2a8
    move/from16 v18, v8

    move-object/from16 v17, v11

    :goto_2ac
    if-eqz v10, :cond_2b0

    or-int/lit8 v0, v0, 0x1

    .line 3449
    :cond_2b0
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move/from16 v2, p2

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move v12, v0

    move-object/from16 v13, p13

    move/from16 p0, v14

    move-object/from16 v14, p14

    move/from16 v15, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    return-void

    :cond_2cd
    move/from16 p0, v14

    .line 3286
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to the calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .registers 2

    .line 3544
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setBootAlarm(Ljava/lang/String;)V

    return-void
.end method

.method public setTime(J)Z
    .registers 6

    .line 3488
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_42

    .line 3493
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_42

    :try_start_1e
    const-string v0, "date_time_policy"

    .line 3496
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 3497
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since EDM doesn\'t allow date & time change."

    .line 3498
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_40} :catch_42

    const/4 p0, 0x0

    return p0

    .line 3507
    :catch_42
    :cond_42
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeImpl(J)Z

    move-result p0

    return p0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 5

    .line 3512
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_3a

    .line 3517
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_3a

    :try_start_1e
    const-string v0, "date_time_policy"

    .line 3520
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 3521
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 3522
    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3521
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_3a

    if-nez v0, :cond_3a

    return-void

    .line 3532
    :catch_3a
    :cond_3a
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/SamsungAlarmManagerService;->notifySetTimeZone(Ljava/lang/String;)V

    .line 3534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3536
    :try_start_45
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    .line 3538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3539
    throw p0
.end method
