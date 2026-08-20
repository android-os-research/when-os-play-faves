.class public Lcom/android/server/biometrics/sensors/BiometricStateCallback;
.super Ljava/lang/Object;
.source "BiometricStateCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricStateCallback"


# instance fields
.field public mBiometricState:I

.field public final mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/biometrics/IBiometricStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IdAV0IED1Uvcw3bHe3fU98oqVOM(Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->lambda$removeDeadObjectListener$0(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    return-void
.end method

.method private synthetic lambda$removeDeadObjectListener$0(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBiometricState()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    return p0
.end method

.method public notifyAllEnrollmentStateChanged(IIZ)V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 133
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final notifyBiometricStateListeners(I)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/IBiometricStateListener;

    .line 106
    :try_start_12
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onStateChanged(I)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v1

    const-string v2, "BiometricStateCallback"

    const-string v3, "Remote exception in biometric state change"

    .line 112
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 109
    :catch_1f
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->removeDeadObjectListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    goto :goto_6

    :cond_23
    return-void
.end method

.method public notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V
    .registers 5

    .line 143
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_10

    :catch_4
    move-exception p0

    const-string p1, "BiometricStateCallback"

    const-string p2, "Remote exception"

    .line 149
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 146
    :catch_d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->removeDeadObjectListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    :goto_10
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 7

    const/4 p2, 0x0

    .line 85
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client finished, state updated to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BiometricStateCallback"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    if-eqz p2, :cond_53

    .line 90
    move-object p2, p1

    check-cast p2, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    .line 91
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    move-result v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enrollment state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_53

    .line 94
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    .line 96
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    move-result p2

    .line 94
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V

    .line 100
    :cond_53
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 6

    .line 60
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 62
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "BiometricStateCallback"

    if-eqz v1, :cond_23

    .line 63
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 64
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x2

    .line 65
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 66
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    .line 67
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    :cond_1f
    const/4 v1, 0x4

    .line 69
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 71
    :cond_23
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_46

    .line 74
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other authentication client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    .line 78
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State updated from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", client "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeDeadObjectListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeadObjectException: DeadObjectListener-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStateCallback"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/biometrics/IBiometricStateListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
