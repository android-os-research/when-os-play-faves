.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAuthenticationSyncLock:Ljava/lang/Object;

.field public final mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mSensorProps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field public final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method public static synthetic $r8$lambda$-QIfvRMh72GltuLLI_dMqsoWZM8(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$onBootPhase$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGY_MnfTVzY18kbIOd-p0qOUCt4(Lcom/android/server/SystemService$TargetUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$onUserUnlocked$2(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QK1O2H7-yAlTm4CZ7cl6UzsVPVk(Lcom/android/server/SystemService$TargetUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$onUserStopping$4(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFrBa8cBol0x8v39RCvsShP4YB4(Lcom/android/server/SystemService$TargetUser;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$onUserStarting$3(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPHXd7X5-4nyim5tjlbGQKMc9YA(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$broadcastCurrentEnrollmentState$0(Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticationSyncLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticatorsRegisteredCallbacks(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastAllAuthenticatorsRegistered()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastCurrentEnrollmentState(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->semSendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    .line 1611
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 1612
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1613
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 1614
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 1615
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    .line 1617
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 1618
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    .line 1621
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 1623
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    return-void
.end method

.method private synthetic lambda$broadcastCurrentEnrollmentState$0(Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V
    .registers 5

    if-eqz p1, :cond_c

    .line 170
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    iget p3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyEnrollmentStateChanged(Landroid/hardware/biometrics/IBiometricStateListener;IIZ)V

    goto :goto_15

    .line 173
    :cond_c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    iget p2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyAllEnrollmentStateChanged(IIZ)V

    :goto_15
    return-void
.end method

.method private synthetic lambda$onBootPhase$1(I)V
    .registers 2

    .line 1774
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->onBootPhase(I)V

    return-void
.end method

.method public static synthetic lambda$onUserStarting$3(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserStarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$onUserStopping$4(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserStopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$onUserUnlocked$2(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final broadcastAllAuthenticatorsRegistered()V
    .registers 8

    .line 1632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1635
    :try_start_8
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    .line 1636
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1641
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_33

    .line 1643
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    .line 1644
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1645
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1648
    :cond_33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1649
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_61

    .line 1650
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 1652
    :try_start_49
    invoke-interface {v0, v2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_3d

    :catch_4d
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v3, "Remote exception in onAllAuthenticatorsRegistered"

    .line 1654
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :cond_56
    return-void

    :cond_57
    :try_start_57
    const-string p0, "FingerprintService"

    const-string/jumbo v0, "mSensorProps is empty"

    .line 1638
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    monitor-exit v1

    return-void

    :catchall_61
    move-exception p0

    .line 1649
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 16

    .line 158
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_b
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 162
    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v10

    .line 163
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 164
    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 165
    invoke-interface {v10, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    move v9, v4

    .line 168
    iget-object v12, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;

    move-object v4, v13

    move-object v5, p0

    move-object v6, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 179
    :cond_59
    monitor-exit v1

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_b .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final canUseFingerprint(Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .registers 11

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1732
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    return v2

    .line 1735
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v2

    .line 1738
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p6

    const/4 v0, 0x0

    const-string v1, "Rejecting "

    const-string v3, "FingerprintService"

    if-nez p6, :cond_51

    .line 1739
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not a current user or profile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1742
    :cond_51
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6f

    .line 1743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; permission denied"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6f
    if-eqz p3, :cond_8f

    .line 1746
    invoke-static {p4, p5}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result p0

    if-nez p0, :cond_8f

    .line 1747
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; not in foreground"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8f
    return v2
.end method

.method public final checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 1758
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    goto :goto_20

    .line 1761
    :cond_10
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x37

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public final getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_21

    .line 1710
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1715
    :cond_21
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .registers 4

    .line 1666
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1667
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSensorProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1702
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1703
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getSingleProvider()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 1680
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    .line 1681
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FingerprintService"

    if-eqz v1, :cond_13

    const-string p0, "No providers found"

    .line 1682
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_13
    const/4 v1, 0x0

    .line 1688
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1689
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1690
    invoke-interface {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1691
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3e
    const-string p0, "Provider not found"

    .line 1695
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 1774
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1661
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1786
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1793
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1779
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method public final semSendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    .registers 4

    if-eqz p1, :cond_f

    .line 1801
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    const-string p1, "FingerprintService"

    const-string/jumbo p2, "semSendErrorEvent: Failed to invoke onError:"

    .line 1803
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_f
    return-void
.end method
