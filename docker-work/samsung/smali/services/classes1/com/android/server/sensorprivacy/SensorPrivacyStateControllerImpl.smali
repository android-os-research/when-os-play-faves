.class public Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;
.super Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
.source "SensorPrivacyStateControllerImpl.java"


# static fields
.field public static final SENSOR_PRIVACY_XML_FILE:Ljava/lang/String; = "sensor_privacy_impl.xml"

.field public static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;


# instance fields
.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

.field public mListenerHandler:Landroid/os/Handler;

.field public mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;-><init>()V

    const-string/jumbo v0, "sensor_privacy_impl.xml"

    .line 45
    invoke-static {v0}, Lcom/android/server/sensorprivacy/PersistedState;->fromFile(Ljava/lang/String;)Lcom/android/server/sensorprivacy/PersistedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->persistAll()V

    return-void
.end method

.method public static getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;
    .registers 2

    .line 59
    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    .line 38
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 41
    :cond_b
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    return-void
.end method

.method public forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
    .registers 3

    .line 116
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/PersistedState;->forEachKnownState(Lcom/android/internal/util/function/QuadConsumer;)V

    return-void
.end method

.method public getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 4

    .line 51
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 53
    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    return-object p1

    .line 55
    :cond_e
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getDefaultSensorState()Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    return-object p0
.end method

.method public final notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 13

    .line 90
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-eqz v1, :cond_27

    .line 91
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v7, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 91
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    return-void
.end method

.method public resetForTestingImpl()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/PersistedState;->resetForTesting()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 123
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 124
    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    return-void
.end method

.method public schedulePersistLocked()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState;->schedulePersist()V

    return-void
.end method

.method public setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
    .registers 4

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    if-nez v0, :cond_f

    .line 105
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;

    .line 106
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    return-void

    .line 103
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .registers 10

    .line 67
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    if-nez p4, :cond_10

    .line 70
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    :cond_10
    if-eqz p4, :cond_23

    .line 73
    new-instance p4, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p4, v2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/PersistedState;->setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 76
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 80
    :cond_23
    invoke-virtual {v0, p4}, Lcom/android/server/sensorprivacy/SensorState;->setEnabled(Z)Z

    move-result p4

    if-eqz p4, :cond_30

    .line 81
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 82
    invoke-static {p5, p6, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void

    .line 85
    :cond_30
    invoke-static {p5, p6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    return-void
.end method
