.class public final Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;
.super Lcom/android/server/ServiceThread;
.source "SemFaceMainThread.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/SemFaceMainThread$FaceMainThread;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "biometrics.face"

.field public static sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "biometrics.face"

    const/4 v1, -0x2

    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;
    .registers 2

    .line 28
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    if-nez v0, :cond_1a

    .line 29
    const-class v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    monitor-enter v0

    .line 30
    :try_start_7
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    if-nez v1, :cond_15

    .line 31
    new-instance v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    .line 32
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 34
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 36
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 42
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

    .line 47
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 2

    .line 51
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
