.class public abstract Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceResetLockoutClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceResetLockoutClient"


# instance fields
.field public final mHardwareAuthToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[B)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "[B)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 51
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    if-nez v12, :cond_20

    return-void

    .line 62
    :cond_20
    array-length v0, v12

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_32

    aget-byte v2, v12, v1

    .line 63
    iget-object v3, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    return-void
.end method


# virtual methods
.method public abstract daemonResetLockout(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method

.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;->daemonResetLockout(Ljava/util/ArrayList;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1a

    :catch_c
    move-exception v0

    const-string v1, "FaceResetLockoutClient"

    const-string v2, "Unable to reset lockout"

    .line 98
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1a
    return-void
.end method

.method public unableToStart()V
    .registers 1

    return-void
.end method
