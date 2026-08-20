.class public Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "SemConcurrentBiometricScheduler.java"


# direct methods
.method public static synthetic $r8$lambda$FnUj-Te9ThhUzvRHLtYMOXBVaJA(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->lambda$cancelEnrollment$2(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qe-G_tLW_wo6yTIOqpOBkTanVk8(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->lambda$startPreparedClient$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h3ddo5-a85AHtog_d6FEiIz058s(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->lambda$cancelAuthenticationIfAuthClientExist$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$h4F9YXlaYVkc0imOwaKMel-9470(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->lambda$scheduleClientMonitor$1(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgB3RP5x6w-T3OaintmJDtyiY-c(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->lambda$cancelAuthenticationOrDetection$3(Landroid/os/IBinder;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .registers 12

    const-string v0, "biometric"

    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;-><init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 33
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v7

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILcom/android/server/biometrics/sensors/CoexCoordinator;)V

    return-void
.end method

.method private synthetic lambda$cancelAuthenticationIfAuthClientExist$4()V
    .registers 5

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz v1, :cond_13

    .line 116
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$cancelAuthenticationOrDetection$3(Landroid/os/IBinder;J)V
    .registers 4

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$2(Landroid/os/IBinder;J)V
    .registers 4

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$scheduleClientMonitor$1(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$0(I)V
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->startPreparedClient(I)V

    return-void
.end method


# virtual methods
.method public cancelAuthenticationIfAuthClientExist()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V
    .registers 7

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->isRunOnMyThread()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 73
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthenticationOrDetection: it\'s not running on main thread, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 78
    :cond_2d
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .registers 7

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->isRunOnMyThread()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelEnrollment: it\'s not running on main thread, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 67
    :cond_2d
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method public cancelInterruptableOperation()V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 107
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v0, :cond_d

    .line 108
    check-cast p0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    :cond_d
    return-void
.end method

.method public getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz p0, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final isRunOnMyThread()Z
    .registers 3

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 126
    :cond_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public reset()V
    .registers 4

    .line 83
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->isRunOnMyThread()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset: it\'s not running on main thread, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 89
    :cond_2e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_35

    .line 91
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->destroy()V

    .line 93
    :cond_35
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 94
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->destroy()V

    goto :goto_3b

    .line 96
    :cond_4b
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 50
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->isRunOnMyThread()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 51
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleClientMonitor: it\'s not running on main thread, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 56
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public startPreparedClient(I)V
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->isRunOnMyThread()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 39
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreparedClient: it\'s not running on main thread, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 44
    :cond_2e
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method
