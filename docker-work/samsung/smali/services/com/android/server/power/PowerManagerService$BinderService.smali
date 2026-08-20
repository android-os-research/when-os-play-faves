.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public static synthetic $r8$lambda$8t0MVWbUDgVK-u9_EN0YNBnD_T0(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->lambda$getWakeLockPackageList$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X4TAuJ9ZX8HpQUKNws78usR_abs(Lcom/android/server/power/PowerManagerService$BinderService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->lambda$userActivity$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 8808
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getWakeLockPackageList$1(I)[Ljava/lang/String;
    .registers 1

    .line 10251
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$userActivity$0()V
    .registers 2

    .line 9046
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsUserActivityInvoked(Lcom/android/server/power/PowerManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V
    .registers 24

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v6, p4

    if-eqz p1, :cond_107

    if-eqz v6, :cond_fe

    .line 8867
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 8869
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v4, 0x40

    const-string v2, "android.permission.DEVICE_POWER"

    if-eqz v0, :cond_27

    .line 8871
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz p5, :cond_3d

    .line 8874
    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 8875
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    goto :goto_3e

    :cond_3d
    move-object v0, v3

    .line 8881
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 8882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/high16 v8, -0x80000000

    and-int/2addr v8, v4

    if-eqz v8, :cond_74

    .line 8885
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8887
    new-instance v2, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    if-eqz v0, :cond_68

    .line 8888
    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    .line 8889
    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 8893
    :cond_68
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 8894
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    move v9, v0

    move-object v7, v2

    move v10, v3

    goto :goto_77

    :cond_74
    move v9, v5

    move v10, v7

    move-object v7, v0

    .line 8897
    :goto_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const/4 v2, 0x1

    const/high16 v0, 0x10000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_df

    .line 8902
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smisScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_df

    if-eqz v7, :cond_b0

    .line 8905
    invoke-virtual {v7}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 8906
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smgetFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 8908
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 8909
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    goto :goto_b2

    :cond_9e
    const/4 v0, 0x0

    .line 8911
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_aa

    .line 8912
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_ab

    :cond_aa
    move-object v3, v6

    .line 8913
    :goto_ab
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v0

    goto :goto_b2

    :cond_b0
    move-object v3, v6

    move v0, v9

    .line 8920
    :goto_b2
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v5

    if-eqz v5, :cond_df

    move-object/from16 v8, p3

    .line 8923
    :try_start_c0
    invoke-interface {v5, v3, v0, v8, v4}, Landroid/app/INotificationManager;->isAlertsAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c4} :catch_c6

    move v12, v0

    goto :goto_e2

    :catch_c6
    move-exception v0

    move-object v3, v0

    .line 8926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call NotificationManager : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PowerManagerService"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    :cond_df
    move-object/from16 v8, p3

    :goto_e1
    move v12, v2

    .line 8933
    :goto_e2
    :try_start_e2
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v2, p1

    move/from16 v3, p7

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v12}, Lcom/android/server/power/PowerManagerService;->-$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_f9

    .line 8936
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f9
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8937
    throw v0

    .line 8865
    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8862
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 16

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 8943
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .registers 18

    if-gez p5, :cond_7

    .line 8821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p5

    .line 8823
    :goto_8
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v0}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 6

    .line 9886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] boostScreenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9887
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4e

    .line 9891
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9897
    :try_start_40
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_49

    .line 9899
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9900
    throw p0

    .line 9888
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public crash(Ljava/lang/String;)V
    .registers 5

    .line 9731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9732
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9736
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mcrashInternal(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 9738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_37
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9739
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 9929
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 9931
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9934
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1a

    move v2, v4

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 9935
    :goto_1b
    array-length v5, p3

    move v6, v3

    :goto_1d
    if-ge v6, v5, :cond_39

    aget-object v7, p3, v6

    const-string v8, "--proto"

    .line 9936
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v3, v4

    goto :goto_39

    :cond_2b
    if-nez v2, :cond_36

    const-string v8, "CRITICAL"

    .line 9941
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    move v2, v4

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_39
    :goto_39
    if-eqz v3, :cond_41

    .line 9948
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V

    goto :goto_46

    .line 9951
    :cond_41
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p2, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;Z)V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_4a

    .line 9954
    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9955
    throw p0
.end method

.method public forceLowPowerStandbyActive(Z)V
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.MANAGE_LOW_POWER_STANDBY",
            "android.permission.DEVICE_POWER"
        }
    .end annotation

    .line 9577
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 9579
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string v2, "forceLowPowerStandbyActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9584
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9586
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->forceActive(Z)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 9588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9589
    throw p0
.end method

.method public forceSuspend()Z
    .registers 4

    .line 9915
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9921
    :try_start_14
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 9923
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9924
    throw p0
.end method

.method public getAmbientDisplaySuppressionTokens()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9966
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9968
    :try_start_8
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getSuppressionTokens(I)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 9970
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9971
    throw p0
.end method

.method public getBatteryDischargePrediction()Landroid/os/ParcelDuration;
    .registers 10

    .line 9441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 9443
    :try_start_5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_5b
    .catchall {:try_start_5 .. :try_end_c} :catchall_56

    .line 9444
    :try_start_c
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 9445
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_53

    .line 9460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 9447
    :cond_19
    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_53

    .line 9448
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_5b
    .catchall {:try_start_1a .. :try_end_21} :catchall_56

    .line 9451
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 9452
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 9453
    new-instance v6, Landroid/os/ParcelDuration;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-direct {v6, v7, v8}, Landroid/os/ParcelDuration;-><init>(J)V

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_50

    .line 9460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .line 9455
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_50

    .line 9456
    :try_start_3d
    new-instance v3, Landroid/os/ParcelDuration;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatteryStats(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->computeBatteryTimeRemaining()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/os/ParcelDuration;-><init>(J)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_5b
    .catchall {:try_start_3d .. :try_end_4c} :catchall_56

    .line 9460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_50
    move-exception p0

    .line 9455
    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_53} :catch_5b
    .catchall {:try_start_52 .. :try_end_53} :catchall_56

    :catchall_53
    move-exception p0

    .line 9447
    :try_start_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_56} :catch_5b
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p0

    .line 9460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9461
    throw p0

    .line 9460
    :catch_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public getBrightnessConstraint(I)F
    .registers 2

    packed-switch p1, :pswitch_data_2e

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 9225
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    return p0

    .line 9223
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    return p0

    .line 9221
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    return p0

    .line 9219
    :pswitch_15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    return p0

    .line 9217
    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    return p0

    .line 9215
    :pswitch_1f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    return p0

    .line 9213
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    return p0

    .line 9211
    :pswitch_29
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    return p0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public getCurrentBrightness(Z)F
    .registers 4

    .line 10172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] getCurrentBrightness: ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 10177
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->getLastAutomaticScreenBrightness()F

    move-result p0

    goto :goto_3b

    .line 10179
    :cond_31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightness()F

    move-result p0

    :goto_3b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10182
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    if-eqz p1, :cond_44

    goto :goto_49

    .line 10185
    :cond_44
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    int-to-float p0, p0

    :goto_49
    return p0
.end method

.method public getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    .line 9295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9297
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getFullBatterySaverPolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 9299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9300
    throw p0
.end method

.method public getLastShutdownReason()I
    .registers 4

    .line 9600
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9605
    :try_start_10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal()I

    move-result p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 9607
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9608
    throw p0
.end method

.method public getLastSleepReason()I
    .registers 4

    .line 9613
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9618
    :try_start_10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgetLastSleepReasonInternal(Lcom/android/server/power/PowerManagerService;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 9620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9621
    throw p0
.end method

.method public getLastUserActivityTime(I)J
    .registers 4

    .line 10228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] getLastUserActivityTime: userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10230
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmProfilePowerState(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v0, :cond_33

    .line 10232
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmProfilePowerState(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-wide p0

    .line 10235
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on getLastUserActivityTime: userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getPowerSaveModeTrigger()I
    .registers 5

    .line 9372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9374
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "automatic_power_save_mode"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 9378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9379
    throw p0
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 4

    .line 9266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9268
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 9270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9271
    throw p0
.end method

.method public getWakeLockPackageList()[Ljava/lang/String;
    .registers 4

    .line 10242
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10246
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10247
    :try_start_18
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 10248
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 10250
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_45

    .line 10251
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/power/PowerManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$BinderService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_45
    move-exception p0

    .line 10250
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public goToSleep(JII)V
    .registers 14

    const-string v0, "PowerManagerService"

    .line 9153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] goToSleep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9156
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_93

    .line 9160
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9164
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " goToSleep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenOffReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 9167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 9168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9170
    :try_start_5e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_8e

    .line 9171
    :try_start_65
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/power/PowerGroup;

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_7f

    .line 9173
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msleepPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_86

    .line 9175
    :cond_7f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdozePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z

    .line 9177
    :goto_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_65 .. :try_end_87} :catchall_8b

    .line 9179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_8b
    move-exception p0

    .line 9177
    :try_start_8c
    monitor-exit v8
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p0

    .line 9179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9180
    throw p0

    .line 9157
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAmbientDisplayAvailable()Z
    .registers 4

    .line 9816
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9821
    :try_start_10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplayConfiguration(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 9823
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9824
    throw p0
.end method

.method public isAmbientDisplaySuppressed()Z
    .registers 4

    .line 9873
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9878
    :try_start_10
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 9880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9881
    throw p0
.end method

.method public isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .registers 5

    .line 9843
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9849
    :try_start_14
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    .line 9851
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9852
    throw p0
.end method

.method public isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .registers 6

    .line 9857
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9859
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_DREAM_SUPPRESSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9864
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->isAmbientDisplayAvailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object p0

    .line 9865
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_34

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    .line 9867
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9868
    throw p0
.end method

.method public isBatteryDischargePredictionPersonalized()Z
    .registers 6

    .line 9467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9469
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_28

    .line 9470
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_25

    .line 9474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_25
    move-exception p0

    .line 9472
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 9474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9475
    throw p0
.end method

.method public isDeviceIdleMode()Z
    .registers 3

    .line 9480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9482
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 9484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9485
    throw p0
.end method

.method public final isEnhancedDischargePredictionValidLocked(J)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PowerManagerService.this.mEnhancedDischargeTimeLock"
        }
    .end annotation

    .line 9433
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_26

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-gez p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public isInteractive()Z
    .registers 3

    .line 9233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9235
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 9237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9238
    throw p0
.end method

.method public isInteractiveForDisplay(I)Z
    .registers 5

    .line 9244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9247
    :try_start_8
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;II)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 9249
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9250
    throw p0
.end method

.method public isLightDeviceIdleMode()Z
    .registers 3

    .line 9490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9492
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 9494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9495
    throw p0
.end method

.method public isLowPowerStandbyEnabled()Z
    .registers 3

    .line 9521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9523
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 9525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9526
    throw p0
.end method

.method public isLowPowerStandbySupported()Z
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.MANAGE_LOW_POWER_STANDBY",
            "android.permission.DEVICE_POWER"
        }
    .end annotation

    .line 9504
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9506
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string/jumbo v2, "isLowPowerStandbySupported"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9511
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9513
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isSupported()Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 9515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9516
    throw p0
.end method

.method public isPowerSaveMode()Z
    .registers 3

    .line 9256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9258
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 9260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9261
    throw p0
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 3

    .line 9905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9907
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misScreenBrightnessBoostedInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 9909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9910
    throw p0
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 4

    .line 9030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9032
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;I)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 9034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9035
    throw p0
.end method

.method public nap(J)V
    .registers 9

    .line 9185
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_69

    const-string v0, "PowerManagerService"

    .line 9190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] nap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9193
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9199
    :try_start_45
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_64

    .line 9200
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerGroup;

    invoke-static {p0, v4, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdreamPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JI)Z

    .line 9202
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_61

    .line 9204
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception p0

    .line 9202
    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    .line 9204
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9205
    throw p0

    .line 9186
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 8813
    new-instance v0, Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerShellCommand;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;)V

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

.method public reboot(ZLjava/lang/String;Z)V
    .registers 9

    .line 9639
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 9640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, " reason: %s"

    .line 9641
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    .line 9642
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, " confirm: %b"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    .line 9643
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, " wait: %b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v2

    .line 9644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_78

    .line 9646
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_78

    .line 9647
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "System server call reboot"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->UpdatePoweroffResetReason(Ljava/lang/Exception;)V

    :cond_78
    if-nez p2, :cond_80

    .line 9652
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object p2

    .line 9654
    :cond_80
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "recovery"

    .line 9655
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string/jumbo v0, "recovery-update"

    .line 9656
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 9657
    :cond_9e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9660
    :cond_a9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 9661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9663
    :try_start_b4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_bd

    .line 9665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_bd
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9666
    throw p0
.end method

.method public rebootSafeMode(ZZ)V
    .registers 7

    .line 9677
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v1, "safemode"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 9681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9683
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x2

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 9685
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9686
    throw p0
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 6

    if-eqz p1, :cond_20

    .line 8953
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8957
    :try_start_12
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 8959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8960
    throw p0

    .line 8950
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lock must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseWakeLockAsync(Landroid/os/IBinder;I)V
    .registers 3

    .line 8965
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->releaseWakeLock(Landroid/os/IBinder;I)V

    return-void
.end method

.method public semWakeUp(JILjava/lang/String;ILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 9089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] semWakeUp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " eventTime = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " reason = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " details = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " flags = 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9093
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageName = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "PowerManagerService"

    .line 9089
    invoke-static {v6, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-gtz v1, :cond_af

    .line 9101
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " semWakeUp: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    if-nez v4, :cond_6d

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_71

    :cond_6d
    invoke-static {v8}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v9

    :goto_71
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenOnReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 9104
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    const-string v9, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v9, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 9108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 9110
    :try_start_8f
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    move-wide v2, p1

    move v4, p3

    move-object/from16 v5, p4

    move v6, v9

    move-object/from16 v7, p6

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_aa

    .line 9113
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_aa
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9114
    throw v0

    .line 9097
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdaptivePowerSaveEnabled(Z)Z
    .registers 5

    .line 9357
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9359
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSaveEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9362
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9364
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverEnabled(Z)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 9366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9367
    throw p0
.end method

.method public setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5

    .line 9342
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9344
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9347
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9349
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 9351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9352
    throw p0
.end method

.method public setAttentionLight(ZI)V
    .registers 6

    .line 9787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setAttentionLight: on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 9788
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 9787
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9789
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9794
    :try_start_36
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetAttentionLightInternal(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3f

    .line 9796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9797
    throw p0
.end method

.method public setAutoBrightnessLimit(IIZ)V
    .registers 9

    .line 10045
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-lt p1, v1, :cond_91

    if-lt p2, v1, :cond_91

    if-ltz p2, :cond_17

    if-le p1, p2, :cond_17

    goto :goto_91

    .line 10054
    :cond_17
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10055
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastAutoBrightnessLimitTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 10056
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAutoBrightnessLowerLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-ne v2, p1, :cond_37

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAutoBrightnessUpperLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-eq v2, p2, :cond_8c

    :cond_37
    const-string v2, "PowerManagerService"

    .line 10058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setAutoBrightnessLimit : lowerLimit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   upperLimit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   slowChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10060
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10058
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10062
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmAutoBrightnessLowerLimit(Lcom/android/server/power/PowerManagerService;I)V

    .line 10063
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmAutoBrightnessUpperLimit(Lcom/android/server/power/PowerManagerService;I)V

    .line 10064
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmAutoBrightnessLimitLastCaller(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 10065
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmForceSlowChange(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10067
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result p2

    or-int/lit8 p2, p2, 0x20

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10068
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10070
    :cond_8c
    monitor-exit v1

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_1e .. :try_end_90} :catchall_8e

    throw p0

    :cond_91
    :goto_91
    const-string p0, "PowerManagerService"

    .line 10049
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setAutoBrightnessLimit : invalid Limits : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10050
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10049
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    .registers 15

    .line 9387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 9388
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BATTERY_PREDICTION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 9391
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const-string/jumbo v4, "setBatteryDischargePrediction"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9395
    :cond_20
    invoke-virtual {p1}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-float p1, v2

    .line 9397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given time remaining is not positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 9400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 9402
    :try_start_41
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_a5

    .line 9403
    :try_start_48
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 9407
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_a2

    .line 9410
    :try_start_51
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_a5

    .line 9411
    :try_start_58
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_67

    .line 9413
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_97

    .line 9427
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_67
    const-wide/16 v6, 0x0

    const-wide/32 v8, 0xea60

    .line 9415
    :try_start_6c
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v10

    sub-long v10, v0, v10

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 9421
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    add-long/2addr v2, v0

    invoke-static {v8, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;J)V

    .line 9422
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;Z)V

    .line 9423
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;J)V

    .line 9424
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_97

    .line 9425
    :try_start_8a
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/power/Notifier;->postEnhancedDischargePredictionBroadcast(J)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_a5

    .line 9427
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_97
    move-exception p0

    .line 9424
    :try_start_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_a5

    .line 9404
    :cond_9a
    :try_start_9a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Discharge prediction can\'t be set while the device is charging"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a2
    move-exception p0

    .line 9407
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw p0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p0

    .line 9427
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9428
    throw p0
.end method

.method public setCoverType(I)V
    .registers 6

    const-string v0, "PowerManagerService"

    .line 10017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setCoverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10018
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10020
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10021
    :try_start_29
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmCoverType(Lcom/android/server/power/PowerManagerService;I)V

    .line 10023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 10024
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastSetCoverTypeTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 10025
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCoverType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastUpdateCoverTypeReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 10027
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10028
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10029
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_29 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public setDozeAfterScreenOff(Z)V
    .registers 5

    .line 9802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setDozeAfterScreenOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9803
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9808
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeAfterScreenOffInternal(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_36

    .line 9810
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9811
    throw p0
.end method

.method public setDynamicPowerSaveHint(ZI)Z
    .registers 6

    .line 9320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const-string/jumbo v2, "updateDynamicPowerSavings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9324
    :try_start_12
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "dynamic_power_savings_disable_threshold"

    .line 9325
    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_30

    const-string v2, "dynamic_power_savings_enabled"

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 9330
    :goto_2b
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_34

    and-int/2addr p2, p0

    .line 9336
    :cond_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9337
    throw p0
.end method

.method public setEarlyWakeUp(Z)V
    .registers 5

    const-string v0, "PowerManagerService"

    .line 10207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setEarlyWakeUp: enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10209
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10212
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10213
    :try_start_29
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastWakeUpReason(Lcom/android/server/power/PowerManagerService;I)V

    .line 10214
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misWakeUpPreventionNeededLocked(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 10215
    monitor-exit v0

    return-void

    .line 10218
    :cond_39
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10219
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmEarlyWakeUp(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10220
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10221
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public setFreezingScreenBrightness(Z)V
    .registers 5

    const-string v0, "PowerManagerService"

    .line 10150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setFreezingScreenBrightness: freezing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10151
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10153
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10154
    :try_start_30
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmFreezingScreenBrightness(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq p1, v1, :cond_4d

    .line 10155
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmFreezingScreenBrightness(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10157
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10158
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10160
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5

    .line 9305
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9307
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setFullPowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9310
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9312
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setFullBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 9314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9315
    throw p0
.end method

.method public setLCDFlashMode(ZLandroid/os/IBinder;)V
    .registers 6

    .line 10077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setLCDFlashMode: enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10079
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10081
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetLCDFlashModeInternal(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V

    return-void
.end method

.method public setLowPowerStandbyActiveDuringMaintenance(Z)V
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.MANAGE_LOW_POWER_STANDBY",
            "android.permission.DEVICE_POWER"
        }
    .end annotation

    .line 9556
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9558
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string/jumbo v2, "setLowPowerStandbyActiveDuringMaintenance"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9563
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9565
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->setActiveDuringMaintenance(Z)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2d

    .line 9567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9568
    throw p0
.end method

.method public setLowPowerStandbyEnabled(Z)V
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.MANAGE_LOW_POWER_STANDBY",
            "android.permission.DEVICE_POWER"
        }
    .end annotation

    .line 9535
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 9537
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    const-string/jumbo v2, "setLowPowerStandbyEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9542
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9544
    :try_start_20
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->setEnabled(Z)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2d

    .line 9546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9547
    throw p0
.end method

.method public setMasterBrightnessLimit(III)V
    .registers 7

    .line 10094
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10096
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenExtendedBrightnessMaximum(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    if-ltz p1, :cond_20

    if-gt p1, v0, :cond_20

    goto :goto_38

    .line 10101
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setMasterBrightnessLimit : invalid lowerLimit : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    if-eq p2, v1, :cond_57

    if-ltz p2, :cond_3f

    if-gt p2, v0, :cond_3f

    goto :goto_57

    .line 10107
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setMasterBrightnessLimit : invalid upperLimit"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    if-eq p1, v1, :cond_7e

    if-eq p2, v1, :cond_7e

    if-gt p1, p2, :cond_5e

    goto :goto_7e

    .line 10112
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMasterBrightnessLimit : lowerLimit "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > upperLimit "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10117
    :cond_7e
    :goto_7e
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetMasterBrightnessLimitInternal(Lcom/android/server/power/PowerManagerService;III)V

    return-void
.end method

.method public setPowerBoost(II)V
    .registers 6

    .line 8829
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 8833
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8834
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V

    return-void
.end method

.method public setPowerMode(IZ)V
    .registers 6

    .line 8839
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 8843
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8844
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    return-void
.end method

.method public setPowerModeChecked(IZ)Z
    .registers 6

    .line 8849
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 8853
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8854
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    move-result p0

    return p0
.end method

.method public setPowerSaveModeEnabled(Z)Z
    .registers 5

    .line 9277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setPowerSaveModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 9278
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 9277
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9280
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    .line 9282
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9285
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9287
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result p0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_46

    .line 9289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_46
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9290
    throw p0
.end method

.method public setProximityDebounceTime(Landroid/os/IBinder;II)V
    .registers 7

    .line 10192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setProximityDebounceTime: Positive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Negative = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3d

    .line 10198
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10199
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10200
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetProximityDebounceTimeInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;II)V

    return-void

    .line 10196
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lock must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    .registers 6

    const-string v0, "PowerManagerService"

    .line 10124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setScreenBrightnessScaleFactor: scaleFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_29

    goto :goto_41

    .line 10127
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setScreenBrightnessScaleFactor: scaleFactor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    :goto_41
    if-eqz p2, :cond_7a

    .line 10134
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.DEVICE_POWER"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10136
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 10137
    :try_start_56
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenBrightnessScaleFactor(Lcom/android/server/power/PowerManagerService;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_75

    .line 10138
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenBrightnessScaleFactor(Lcom/android/server/power/PowerManagerService;F)V

    .line 10140
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10141
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10143
    :cond_75
    monitor-exit p2

    return-void

    :catchall_77
    move-exception p0

    monitor-exit p2
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_77

    throw p0

    .line 10131
    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lock must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStayOnSetting(I)V
    .registers 8

    .line 9758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setStayOnSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 9759
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    .line 9758
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_41

    .line 9763
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 9764
    invoke-static {v4, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 9763
    invoke-static {v3, v0, v4, v5, v1}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_41

    const-string p0, "[api] setStayOnSetting: checkAndNoteWriteSettingsOperation() false"

    .line 9767
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9774
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9776
    :try_start_45
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    .line 9778
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9779
    throw p0
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 9

    .line 9698
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 9699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " shutdown"

    .line 9700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, " reason: %s"

    .line 9701
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    .line 9702
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, " confirm: %b"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    .line 9703
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " wait: %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v1

    .line 9704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_7d

    .line 9706
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_7d

    .line 9707
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "System server call shutdown"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->UpdatePoweroffResetReason(Ljava/lang/Exception;)V

    :cond_7d
    if-nez p2, :cond_85

    .line 9712
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object p2

    .line 9714
    :cond_85
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 9717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9719
    :try_start_9c
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_a5

    .line 9721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a5
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9722
    throw p0
.end method

.method public suppressAmbientDisplay(Ljava/lang/String;Z)V
    .registers 6

    .line 9829
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9835
    :try_start_14
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->suppress(Ljava/lang/String;IZ)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    .line 9837
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9838
    throw p0
.end method

.method public switchForceLcdBacklightOffState()V
    .registers 5

    const-string v0, "PowerManagerService"

    const-string v1, "[api] switchForceLcdBacklightOffState()"

    .line 9976
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9977
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9978
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 9979
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getDisplayPowerRequestLocked()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    .line 9980
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9981
    :try_start_2b
    iget-boolean v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v3, :cond_32

    .line 9982
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    goto :goto_35

    :cond_32
    const/4 v1, 0x1

    .line 9985
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 9987
    :goto_35
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 9988
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 9989
    monitor-exit v2

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_47

    throw p0
.end method

.method public systemReboot(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCoverState(Z)V
    .registers 10

    const-string v0, "PowerManagerService"

    .line 9995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] updateCoverState: closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9996
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9997
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p1, v1, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 9998
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmCoverAuthReady(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 9999
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmCoverAuthReady(Lcom/android/server/power/PowerManagerService;Z)V

    .line 10000
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmCoverAuthReadyRunnable(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10001
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmCoverAuthReadyRunnable(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V

    .line 10003
    :cond_42
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 10006
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastUpdateCoverStateTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 10007
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverState called on closed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmlastUpdateCoverStateReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 10009
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    .line 10009
    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 10012
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10013
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_1d .. :try_end_83} :catchall_81

    throw p0
.end method

.method public updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V
    .registers 6

    if-eqz p1, :cond_24

    .line 9017
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9022
    :try_start_16
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 9024
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9025
    throw p0

    .line 9014
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lock must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    .line 8973
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 8976
    array-length v2, p2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_15

    aget v4, p2, v3

    .line 8977
    invoke-virtual {v1, v4}, Landroid/os/WorkSource;->add(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    move-object v1, v0

    .line 8980
    :cond_15
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    return-void
.end method

.method public updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V
    .registers 3

    .line 8985
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_39

    .line 8994
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_22

    .line 8995
    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 8996
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    move-object p2, v2

    .line 9002
    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 9003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9005
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_34

    .line 9007
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9008
    throw p0

    .line 8991
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lock must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public userActivity(IJII)V
    .registers 16

    .line 9041
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsUserActivityInvoked(Lcom/android/server/power/PowerManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "PowerManagerService"

    .line 9042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] userActivity : event: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9043
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9042
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9046
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandlerPmsMisc(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v2

    .line 9047
    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 9046
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 9050
    :cond_5e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 9051
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.USER_ACTIVITY"

    .line 9053
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c9

    .line 9059
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9060
    :try_start_8b
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide p1

    const-wide/32 p3, 0x493e0

    add-long/2addr p1, p3

    cmp-long p1, v0, p1

    if-ltz p1, :cond_c4

    .line 9061
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;J)V

    const-string p0, "PowerManagerService"

    .line 9062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9065
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9062
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9068
    :cond_c4
    monitor-exit v2

    return-void

    :catchall_c6
    move-exception p0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_8b .. :try_end_c8} :catchall_c6

    throw p0

    :cond_c9
    cmp-long v0, p2, v0

    if-gtz v0, :cond_e7

    .line 9076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 9077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 9079
    :try_start_d5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V
    :try_end_de
    .catchall {:try_start_d5 .. :try_end_de} :catchall_e2

    .line 9081
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_e2
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9082
    throw p0

    .line 9073
    :cond_e7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    move-wide v2, p1

    .line 9121
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_b6

    const-string v1, "PowerManagerService"

    .line 9126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] wakeUp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " eventTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9127
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " wakeUp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-nez p3, :cond_47

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_4b

    :cond_47
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v6

    :goto_4b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenOnReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 9130
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 9134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 9136
    :try_start_69
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_b1

    .line 9137
    :try_start_70
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_93

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$sfgetsQuiescent()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 9138
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 9139
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 9140
    monitor-exit v11
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_ae

    .line 9146
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 9142
    :cond_93
    :try_start_93
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    move-wide v2, p1

    move v4, p3

    move-object/from16 v5, p4

    move v6, v8

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 9144
    monitor-exit v11
    :try_end_aa
    .catchall {:try_start_93 .. :try_end_aa} :catchall_ae

    .line 9146
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ae
    move-exception v0

    .line 9144
    :try_start_af
    monitor-exit v11
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v0

    .line 9146
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9147
    throw v0

    .line 9122
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
