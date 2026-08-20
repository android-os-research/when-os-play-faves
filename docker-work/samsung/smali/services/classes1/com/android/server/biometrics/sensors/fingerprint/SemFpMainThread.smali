.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;
.super Lcom/android/server/ServiceThread;
.source "SemFpMainThread.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread$FingerprintMainThread;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "biometrics.fp"

.field public static sInstance:Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "biometrics.fp"

    const/4 v1, -0x2

    const/4 v2, 0x1

    .line 31
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;
    .registers 2

    .line 35
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->sInstance:Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    if-nez v0, :cond_1a

    .line 36
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    monitor-enter v0

    .line 37
    :try_start_7
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->sInstance:Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    if-nez v1, :cond_15

    .line 38
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->sInstance:Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    .line 39
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 41
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 43
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->sInstance:Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    return-object v0
.end method


# virtual methods
.method public equalsLooper()Z
    .registers 2

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 49
    :cond_7
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is shutting down"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 54
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
