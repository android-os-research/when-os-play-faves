.class public abstract Lcom/android/server/biometrics/sensors/InvalidationClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InvalidationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InvalidationClient"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 51
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object/from16 v0, p7

    .line 54
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InvalidationClient;->mAuthenticatorIds:Ljava/util/Map;

    move-object/from16 v0, p8

    .line 55
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0xf

    return p0
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_11
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p1

    const-string p2, "InvalidationClient"

    const-string v0, "Remote exception"

    .line 63
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_1f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onError(II)V
    .registers 4

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    const-string p2, "InvalidationClient"

    const-string v0, "Remote exception"

    .line 91
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :goto_e
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void
.end method

.method public unableToStart()V
    .registers 1

    return-void
.end method
