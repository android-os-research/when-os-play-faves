.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
    }
.end annotation


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

.field public mChallenge:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

.field public final mEventConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLazySession:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field public mSensorInfo:Ljava/lang/String;

.field public final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mTag:Ljava/lang/String;

.field public mTestHalEnabled:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$TAxnz30GDvuAwMUnHxyeUxKCeG8(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->lambda$new$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Zh5HGqpRbXwfcZ4vpdeADlNxLkM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->lambda$new$1()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->updateChallenge(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 12

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 908
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 585
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    .line 586
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 587
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 588
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 589
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 590
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 593
    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-direct {p4, p3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 599
    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;

    invoke-direct {p5, p0, p8, p6, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-direct {p3, p1, p7, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 688
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 689
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 692
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_56} :catch_57

    goto :goto_5e

    .line 694
    :catch_57
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string p1, "Unable to register user switch observer"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void
.end method

.method private synthetic lambda$new$0()I
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, -0x2710

    :goto_b
    return p0
.end method

.method private synthetic lambda$new$1()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method


# virtual methods
.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 11

    .line 716
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V

    return-object v7
.end method

.method public dispatchAcquisitionEvent(III)V
    .registers 8

    .line 834
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 836
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v3, :cond_9

    .line 837
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAcquire(IIII)V

    goto :goto_9

    .line 840
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public dispatchAuthenticationStartedEvent()V
    .registers 3

    .line 877
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 879
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticationStarted()V

    goto :goto_9

    .line 881
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dispatchAuthenticationStoppedEvent()V
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 886
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 887
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticationStopped()V

    goto :goto_9

    .line 889
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dispatchEnrollStartedEvent()V
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 868
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 869
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v3, :cond_9

    .line 870
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onEnrollStarted(I)V

    goto :goto_9

    .line 873
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public dispatchErrorEvent(III)V
    .registers 7

    const/16 v0, 0x8

    if-ne p2, v0, :cond_12

    const/16 v0, 0x3ec

    if-ne p3, v0, :cond_12

    .line 846
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 849
    :cond_12
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter p1

    .line 850
    :try_start_15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 851
    invoke-interface {v0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onError(II)V

    goto :goto_1b

    .line 853
    :cond_2b
    monitor-exit p1

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public dispatchGestureEvent(I)V
    .registers 4

    .line 826
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 827
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 828
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onGestureEvent(I)V

    goto :goto_9

    .line 830
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dispatchOnAcquiredInternal()V
    .registers 3

    .line 927
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz p0, :cond_f

    .line 928
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    const/4 v0, 0x7

    const v1, 0x11171

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onAcquired(BI)V

    :cond_f
    return-void
.end method

.method public dispatchOnAuthenticated(Z)V
    .registers 4

    .line 893
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 894
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 895
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticated(Z)V

    goto :goto_9

    .line 897
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dispatchOnEnrolledEvent()V
    .registers 5

    .line 857
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 858
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 859
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v3, :cond_9

    .line 860
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onEnrolled(I)V

    goto :goto_9

    .line 863
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public dispatchSpenEvent(I)V
    .registers 4

    .line 819
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 820
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 821
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onSpenEvent(I)V

    goto :goto_9

    .line 823
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 14

    const-wide v0, 0x20b00000001L

    .line 752
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 754
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x1

    .line 755
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 756
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-wide v4, 0x20e00000008L

    const/4 p1, 0x0

    .line 757
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2f
    const-wide v4, 0x10500000003L

    .line 759
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 760
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    .line 759
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000004L

    .line 761
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 763
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 764
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 766
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 767
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 768
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v8, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 769
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 770
    invoke-virtual {v8, v9, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 768
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 771
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_5b

    :cond_99
    const-wide v2, 0x10800000006L

    .line 774
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    .line 776
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 779
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorIds()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method public getLazySession()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 1

    .line 725
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object p0
.end method

.method public getRecentGeneratedChallenge()J
    .registers 3

    .line 905
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mChallenge:J

    return-wide v0
.end method

.method public getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    return-object p0
.end method

.method public getSensorInfo()Ljava/lang/String;
    .registers 1

    .line 923
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    .line 703
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 708
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public onBinderDied()V
    .registers 5

    .line 783
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 784
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_2d

    .line 785
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 787
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v0, 0x94

    const/4 v1, -0x1

    .line 790
    invoke-static {v0, v2, v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 796
    :cond_2d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 797
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->reset()V

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method public semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 4

    .line 803
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_12

    .line 804
    :try_start_5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 805
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_a

    .line 813
    :try_start_5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 815
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setTestHalEnabled(Z)V
    .registers 5

    .line 733
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_3b

    .line 737
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    if-eqz v0, :cond_38

    .line 739
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v1, "Closing old session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->close()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v0

    .line 743
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    const/4 v0, 0x0

    .line 745
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 747
    :cond_3b
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mTestHalEnabled:Z

    return-void
.end method

.method public final updateChallenge(J)V
    .registers 3

    .line 901
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mChallenge:J

    return-void
.end method

.method public updateSensorInfo(Ljava/lang/String;)V
    .registers 2

    .line 919
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorInfo:Ljava/lang/String;

    return-void
.end method
