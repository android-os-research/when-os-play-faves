.class Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidationTracker"
.end annotation


# instance fields
.field public final mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field public final mSensorsPendingInvalidation:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;II",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 151
    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/biometrics/BiometricSensor;

    .line 154
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v0, p4, :cond_21

    goto :goto_10

    .line 158
    :cond_21
    iget v0, p5, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_10

    .line 163
    :cond_2c
    :try_start_2c
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_39

    if-nez v0, :cond_41

    goto :goto_10

    :catch_39
    move-exception v0

    const-string v1, "BiometricService"

    const-string v2, "Remote Exception"

    .line 167
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    const-string v0, "BiometricService"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting authenticatorId invalidation for sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-enter p0

    .line 173
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    iget v1, p5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_7a

    .line 177
    :try_start_66
    iget-object v0, p5, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;

    invoke-direct {v1, p0, p5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker$1;-><init>(Lcom/android/server/biometrics/BiometricService$InvalidationTracker;Lcom/android/server/biometrics/BiometricSensor;)V

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_10

    :catch_71
    move-exception p5

    const-string v0, "BiometricService"

    const-string v1, "RemoteException"

    .line 184
    invoke-static {v0, v1, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catchall_7a
    move-exception p1

    .line 174
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1

    .line 188
    :cond_7d
    monitor-enter p0

    .line 189
    :try_start_7e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_9d

    if-eqz p1, :cond_9b

    :try_start_86
    const-string p1, "BiometricService"

    const-string p2, "No sensors require invalidation"

    .line 191
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_92} :catch_93
    .catchall {:try_start_86 .. :try_end_92} :catchall_9d

    goto :goto_9b

    :catch_93
    move-exception p1

    :try_start_94
    const-string p2, "BiometricService"

    const-string p3, "Remote Exception"

    .line 194
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    :cond_9b
    :goto_9b
    monitor-exit p0

    return-void

    :catchall_9d
    move-exception p1

    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;II",
            "Landroid/hardware/biometrics/IInvalidationCallback;",
            ")",
            "Lcom/android/server/biometrics/BiometricService$InvalidationTracker;"
        }
    .end annotation

    .line 144
    new-instance v6, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-object v6
.end method


# virtual methods
.method public onInvalidated(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 202
    monitor-enter p0

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v0, "BiometricService"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalidated, remaining size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    .line 206
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mSensorsPendingInvalidation:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_46

    if-eqz p1, :cond_44

    .line 210
    :try_start_36
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->mClientCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_46

    goto :goto_44

    :catch_3c
    move-exception p1

    :try_start_3d
    const-string v0, "BiometricService"

    const-string v1, "Remote Exception"

    .line 212
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_44
    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw p1
.end method
