.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "FaceStartUserClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/StartUserClient<",
        "Landroid/hardware/biometrics/face/IFace;",
        "Landroid/hardware/biometrics/face/ISession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceStartUserClient"


# instance fields
.field public final mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/face/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/IFace;",
            ">;",
            "Landroid/os/IBinder;",
            "II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/biometrics/face/ISessionCallback;",
            "Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    .line 50
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/StartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    move-object/from16 v1, p8

    .line 51
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    return-void
.end method


# virtual methods
.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 6

    .line 64
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->setUserId(I)V

    .line 67
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 68
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->setISessionCallback(Landroid/hardware/biometrics/face/ISessionCallback;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/IFace;

    .line 70
    invoke-interface {v0}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    move-result v0

    .line 71
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getISession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 72
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getISession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 73
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getISession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(ILjava/lang/Object;I)V

    goto :goto_7b

    .line 76
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/IFace;

    .line 77
    invoke-interface {v0}, Landroid/hardware/biometrics/face/IFace;->getInterfaceVersion()I

    move-result v1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 78
    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/face/IFace;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 81
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(ILjava/lang/Object;I)V

    .line 83
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_83} :catch_84

    goto :goto_94

    :catch_84
    move-exception v0

    const-string v1, "FaceStartUserClient"

    const-string v2, "Remote exception"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_94
    return-void
.end method

.method public unableToStart()V
    .registers 1

    return-void
.end method
