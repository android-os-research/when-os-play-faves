.class public abstract Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "BaseClientMonitor"

.field public static sCount:I


# instance fields
.field public mAlreadyDone:Z

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCookie:I

.field public final mHashID:I

.field public mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

.field public final mOwner:Ljava/lang/String;

.field public mRequestId:J

.field public final mSensorId:I

.field public final mSequentialId:I

.field public final mTargetUserId:I

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$1kLIM1F6HcwbWoaFkB4V-mC_y5I(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->lambda$binderDiedInternal$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 13

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 69
    new-instance v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 97
    sget v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    iput v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    .line 98
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    const-wide/16 v1, -0x1

    .line 100
    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 101
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 102
    iput p4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 103
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 104
    iput p6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 105
    iput p7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 106
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 107
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    if-eqz p2, :cond_3f

    .line 115
    :try_start_33
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p0

    const-string p1, "BaseClientMonitor"

    const-string p2, "caught remote exception in linkToDeath: "

    .line 118
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method private synthetic lambda$binderDiedInternal$0(Z)V
    .registers 4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    if-eqz v0, :cond_20

    const-string p0, "Binder died but client is finished, ignoring"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_20
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v0, :cond_2f

    const-string v0, "Binder died, cancelling client"

    .line 210
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    :cond_2f
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_36

    .line 215
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    :cond_36
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method public binderDiedInternal(Z)V
    .registers 4

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getMainHandlerWithModality()Landroid/os/Handler;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    .line 165
    :try_start_8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_2f

    .line 168
    :catch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "BaseClientMonitor"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_32
    return-void
.end method

.method public getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 298
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCookie()I
    .registers 1

    .line 270
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    return p0
.end method

.method public getHashID()I
    .registers 1

    .line 315
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    return p0
.end method

.method public final getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    return-object p0
.end method

.method public getLogger()Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    return-object p0
.end method

.method public final getMainHandlerWithModality()Landroid/os/Handler;
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->getStatsModality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 323
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 326
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    .line 328
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getProtoEnum()I
.end method

.method public getRequestId()J
    .registers 3

    .line 275
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-wide v0
.end method

.method public getSensorId()I
    .registers 1

    .line 265
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    return p0
.end method

.method public getTargetUserId()I
    .registers 1

    .line 256
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    return p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public hasRequestId()Z
    .registers 5

    .line 280
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isAlreadyDone()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    return p0
.end method

.method public isCryptoOperation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public markAlreadyDone()V
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "marking operation as done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    return-void
.end method

.method public final setRequestId(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 293
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-void

    .line 291
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "request id must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 146
    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public waitForCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 2

    return-object p1
.end method
