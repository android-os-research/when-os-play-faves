.class public Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;
.super Ljava/lang/Object;
.source "ClientMonitorCompositeCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    .line 34
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 50
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 42
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
