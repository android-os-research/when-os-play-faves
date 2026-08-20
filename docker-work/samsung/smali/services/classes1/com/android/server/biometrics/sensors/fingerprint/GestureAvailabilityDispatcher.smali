.class public Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
.super Ljava/lang/Object;
.source "GestureAvailabilityDispatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GestureAvailabilityTracker"


# instance fields
.field public final mActiveSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mIsActive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isAnySensorActive()Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    return p0
.end method

.method public markSensorActive(IZ)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 56
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    if-eq p1, p2, :cond_4d

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notifying gesture availability, active="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureAvailabilityTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->notifyClientActiveCallbacks(Z)V

    :cond_4d
    return-void
.end method

.method public final notifyClientActiveCallbacks(Z)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 81
    :try_start_12
    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 84
    :catch_16
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
