.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$OperationState;
    }
.end annotation


# static fields
.field public static final CANCEL_WATCHDOG_DELAY_MS:I = 0xbb8

.field public static final STATE_FINISHED:I = 0x5

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STARTED_CANCELING:I = 0x3

.field public static final STATE_WAITING_FOR_COOKIE:I = 0x4

.field public static final STATE_WAITING_IN_QUEUE:I = 0x0

.field public static final STATE_WAITING_IN_QUEUE_CANCELING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BiometricSchedulerOperation"


# instance fields
.field public final mCancelWatchdog:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final mIsDebuggable:Ljava/util/function/BooleanSupplier;

.field public mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public mState:I


# direct methods
.method public static synthetic $r8$lambda$B7QjT2I_8dwC5lA66-6hE4ajnBw(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClientMonitor(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V
    .registers 5

    .line 123
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V
    .registers 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 133
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 134
    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 135
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 136
    new-instance p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Ljava/util/function/BooleanSupplier;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 137
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_28

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watchdog Triggered]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_28
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 254
    fill-array-data v0, :array_3e

    const-string v1, "abort"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 261
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 262
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 264
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricSchedulerOperation"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    const-string v2, "cancel"

    .line 286
    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenOneOf(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 290
    :cond_10
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v2

    const-string v3, "BiometricSchedulerOperation"

    if-nez v2, :cond_2f

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot cancel - operation not interruptable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_47

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot cancel - already invoked for operation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_47
    iput v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-eqz v1, :cond_6f

    if-eq v1, v0, :cond_6f

    const/4 v0, 0x4

    if-ne v1, v0, :cond_51

    goto :goto_6f

    .line 307
    :cond_51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Cancelling] Current client: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast p2, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    goto :goto_90

    .line 304
    :cond_6f
    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cancelling] Current client (without start): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 312
    :goto_90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-eqz p0, :cond_7

    .line 481
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    :cond_7
    return-void
.end method

.method public final doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 7

    .line 215
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p1

    .line 218
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BiometricSchedulerOperation"

    if-ne v0, v1, :cond_3b

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation marked for cancellation, cancelling now: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {p1, v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 222
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p1, p0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz p1, :cond_34

    .line 223
    check-cast p0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 p1, 0x5

    .line 224
    invoke-interface {p0, p1, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    goto :goto_3a

    :cond_34
    const-string/jumbo p0, "monitor cancelled but does not implement ErrorConsumer"

    .line 227
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return v2

    .line 233
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isUnstartableHalOperation()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 236
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return v2

    :cond_63
    const/4 v0, 0x2

    .line 240
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "started: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final varargs errorWhenNoneOf(Ljava/lang/String;[I)Z
    .registers 5

    .line 456
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_3a

    const-string p0, "BiometricSchedulerOperation"

    .line 462
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 460
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    return v0
.end method

.method public final varargs errorWhenOneOf(Ljava/lang/String;[I)Z
    .registers 4

    .line 444
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mState must not be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "BiometricSchedulerOperation"

    .line 450
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 448
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return p2
.end method

.method public getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object p0
.end method

.method public getProtoEnum()I
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result p0

    return p0
.end method

.method public getSensorId()I
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    return p0
.end method

.method public getTargetUserId()I
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    return p0
.end method

.method public final getWrappedCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 2

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    return-object p0
.end method

.method public final getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 323
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    .line 332
    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v1
.end method

.method public isAcquisitionOperation()Z
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    return p0
.end method

.method public isAuthenticateOperation()Z
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    return p0
.end method

.method public isAuthenticationOrDetectionOperation()Z
    .registers 2

    .line 386
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 387
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    if-nez v0, :cond_d

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isCanceling()Z
    .registers 2

    .line 421
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isEnrollOperation()Z
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    return p0
.end method

.method public isFinished()Z
    .registers 2

    .line 426
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isHalOperation()Z
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return p0
.end method

.method public isInterruptable()Z
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/Interruptable;

    return p0
.end method

.method public isMarkedCanceling()Z
    .registers 2

    .line 431
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMatchingRequestId(J)Z
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 406
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public isMatchingToken(Landroid/os/IBinder;)Z
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isReadyToStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)I
    .registers 4

    .line 153
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    .line 154
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 156
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 157
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->waitForCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :cond_1d
    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 416
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isUnstartableHalOperation()Z
    .registers 2

    .line 365
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 366
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 367
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isWaitingForCookie()Z
    .registers 2

    .line 475
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public markCanceling()Z
    .registers 2

    .line 271
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 272
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 173
    fill-array-data v0, :array_36

    const-string/jumbo v1, "start"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "operation requires cookie"

    .line 182
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "BiometricSchedulerOperation"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 183
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result p0

    return p0

    nop

    :array_36
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public startWithCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)Z
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_28

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched cookie for operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricSchedulerOperation"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_28
    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 204
    fill-array-data p2, :array_3e

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_38

    return v1

    .line 211
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Z

    move-result p0

    return p0

    nop

    :array_3e
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
