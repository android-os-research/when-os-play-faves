.class public Lcom/android/server/biometrics/sensors/CoexCoordinator;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;,
        Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final FACE_HAPTIC_DISABLE:Ljava/lang/String; = "com.android.server.biometrics.sensors.CoexCoordinator.disable_face_haptics"

.field public static final SETTING_ENABLE_NAME:Ljava/lang/String; = "com.android.server.biometrics.sensors.CoexCoordinator.enable"

.field public static final SUCCESSFUL_AUTH_VALID_DURATION_MS:J = 0x1388L

.field public static final TAG:Ljava/lang/String; = "BiometricCoexCoordinator"

.field public static sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;


# instance fields
.field public mAdvancedLogicEnabled:Z

.field public final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mFaceHapticDisabledWhenNonBypass:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mSuccessfulAuths:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;
    .registers 1

    .line 158
    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    if-nez v0, :cond_b

    .line 159
    new-instance v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    .line 161
    :cond_b
    sget-object v0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->sInstance:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    return-object v0
.end method

.method public static isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 495
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 496
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    move v1, v0

    :cond_d
    return v1
.end method

.method public static isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 502
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 503
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method


# virtual methods
.method public declared-synchronized addAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "BiometricCoexCoordinator"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAuthenticationClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "BiometricCoexCoordinator"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting existing client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with new client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_57
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_62

    .line 200
    monitor-exit p0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final hasMultipleSuccessfulAuthentications()Z
    .registers 4

    .line 532
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 533
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthSuccessful()Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    const/4 v2, 0x1

    if-le v1, v2, :cond_c

    return v2

    :cond_24
    return v0
.end method

.method public final isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 482
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 486
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isFaceScanning()Z
    .registers 4

    .line 490
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz p0, :cond_17

    .line 491
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getState()I

    move-result p0

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public final isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    return v1

    .line 522
    :cond_f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eq v0, p1, :cond_19

    return v1

    :cond_28
    return v2
.end method

.method public final isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)Z"
        }
    .end annotation

    .line 509
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-ne v0, p1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 391
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 396
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasUserDetected()Z

    move-result v1

    if-nez v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 397
    :goto_1c
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthAttempted()Z

    move-result v4

    const/4 v5, 0x5

    if-eq p2, v5, :cond_2d

    const/16 v5, 0xa

    if-eq p2, v5, :cond_2d

    if-eqz v4, :cond_2d

    if-nez v1, :cond_2d

    move p2, v2

    goto :goto_2e

    :cond_2d
    move p2, v3

    .line 427
    :goto_2e
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_3b

    goto :goto_57

    .line 431
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 432
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    move v3, v2

    goto :goto_57

    .line 434
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_57

    if-nez v0, :cond_57

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    :cond_57
    :goto_57
    if-eqz p2, :cond_5f

    if-nez v3, :cond_5f

    .line 442
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;->sendHapticFeedback()V

    goto :goto_7e

    :cond_5f
    const-string p1, "BiometricCoexCoordinator"

    .line 444
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no haptic shouldUsuallyVibrate: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", hapticSuppressedByCoex: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_80

    .line 447
    :goto_7e
    monitor-exit p0

    return-void

    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAuthenticationRejected(JLcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;I",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 302
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    .line 304
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_103

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_103

    if-eqz v0, :cond_19

    .line 306
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 307
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_11e

    .line 310
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 311
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 312
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 313
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_5b

    const-string p1, "BiometricCoexCoordinator"

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Face rejected in multi-sensor auth, udfps: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_11e

    .line 319
    :cond_5b
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsAuthAttempted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 324
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 325
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_11e

    .line 328
    :cond_69
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz p1, :cond_7b

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_7b

    const-string p1, "BiometricCoexCoordinator"

    const-string p2, "Skipping face reject haptic"

    .line 329
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 331
    :cond_7b
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 333
    :goto_7e
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_11e

    .line 335
    :cond_83
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    move-result-object p1

    if-eqz p1, :cond_b8

    const-string p2, "BiometricCoexCoordinator"

    .line 339
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using recent auth: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 342
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 343
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p2, v3}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 344
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11e

    .line 345
    :cond_b8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result p1

    if-eqz p1, :cond_d8

    const-string p1, "BiometricCoexCoordinator"

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UDFPS rejected in multi-sensor auth, face: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11e

    :cond_d8
    const-string p1, "BiometricCoexCoordinator"

    const-string p2, "UDFPS rejected in multi-sensor auth, face not scanning"

    .line 356
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 358
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11e

    :cond_e6
    const-string p1, "BiometricCoexCoordinator"

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown client rejected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 363
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11e

    .line 366
    :cond_103
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result p1

    if-eqz p1, :cond_118

    if-nez v0, :cond_118

    .line 367
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-nez p1, :cond_114

    .line 368
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 370
    :cond_114
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_11e

    .line 372
    :cond_118
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 373
    invoke-interface {p5}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    :goto_11e
    if-nez p4, :cond_124

    const/4 p1, 0x0

    .line 382
    invoke-interface {p5, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V
    :try_end_124
    .catchall {:try_start_1 .. :try_end_124} :catchall_126

    .line 384
    :cond_124
    monitor-exit p0

    return-void

    :catchall_126
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAuthenticationSucceeded(JLcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isSingleAuthOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    .line 224
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_20

    if-nez v0, :cond_14

    .line 225
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->hasMultipleSuccessfulAuthentications()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_17

    .line 228
    :cond_14
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    :goto_17
    const/4 p1, 0x0

    .line 231
    invoke-interface {p4, p1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 232
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_cd

    .line 233
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUnknownClient(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    .line 237
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 238
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 239
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_cd

    .line 240
    :cond_32
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    if-eqz v1, :cond_c4

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_c4

    if-eqz v0, :cond_49

    .line 243
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 244
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 245
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto/16 :goto_cd

    .line 248
    :cond_49
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 249
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 250
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentFaceAuth(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 251
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isUdfpsActivelyAuthing(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v5, v0

    move-wide v6, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;-><init>(Landroid/os/Handler;Ljava/util/LinkedList;JILcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 259
    :cond_82
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    if-eqz p1, :cond_94

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguardBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_94

    const-string p1, "BiometricCoexCoordinator"

    const-string p2, "Skipping face success haptic"

    .line 260
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 262
    :cond_94
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 264
    :goto_97
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 265
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_cd

    .line 267
    :cond_9e
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isCurrentUdfps(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 268
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->isFaceScanning()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 271
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 274
    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->removeAndFinishAllFaceFromQueue()V

    .line 276
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 277
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 278
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_cd

    .line 281
    :cond_ba
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 282
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 283
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    goto :goto_cd

    .line 289
    :cond_c4
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendHapticFeedback()V

    .line 290
    invoke-interface {p4, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationResult(Z)V

    .line 291
    invoke-interface {p4}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V
    :try_end_cd
    .catchall {:try_start_1 .. :try_end_cd} :catchall_cf

    .line 293
    :goto_cd
    monitor-exit p0

    return-void

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final popSuccessfulFaceAuthIfExists(J)Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
    .registers 9

    .line 451
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    .line 452
    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthTimestamp:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_38

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing stale auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 459
    :cond_38
    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 460
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeAndFinishAllFaceFromQueue()V
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    .line 472
    iget v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing from queue, canceling, and finishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricCoexCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->sendAuthenticationCanceled()V

    .line 475
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;->handleLifecycleAfterAuth()V

    .line 476
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3d
    return-void
.end method

.method public declared-synchronized removeAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "BiometricCoexCoordinator"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAuthenticationClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "BiometricCoexCoordinator"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist in map. Client: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_5c

    .line 211
    monitor-exit p0

    return-void

    .line 213
    :cond_51
    :try_start_51
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5c

    .line 214
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setAdvancedLogicEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    return-void
.end method

.method public setFaceHapticDisabledWhenNonBypass(Z)V
    .registers 2

    .line 170
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled: "

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mAdvancedLogicEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Face Haptic Disabled: "

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mFaceHapticDisabledWhenNonBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Queue size: "

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator;->mSuccessfulAuths:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;

    const-string v2, ", Auth: "

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 553
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
