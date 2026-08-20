.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$Injector;,
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field public mAuthSession:Lcom/android/server/biometrics/AuthSession;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field public mKeyStore:Landroid/security/KeyStore;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRandom:Ljava/util/Random;

.field public final mRequestCounter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field public final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTrustManager:Landroid/app/trust/ITrustManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D5yaB5EF_EEFraO1i7V-TG-3I0Q(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$KVrCT61Cq3wfJzWz7XeRv_6QOoc(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MpDeRQp3fEVzQfURFs5X813Gceo(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->initBiometricsTimestamp()V

    return-void
.end method

.method public static synthetic $r8$lambda$rZ-aT40jrihkwHNSqf2S7-jr6Ws(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$1(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[BLandroid/os/Bundle;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(JIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDialogAnimatedIn(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(JI[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleOnError(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnErrorFromSysUi(Lcom/android/server/biometrics/BiometricService;JII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnErrorFromSysUi(JII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSwitchingSensorPressed(Lcom/android/server/biometrics/BiometricService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnSwitchingSensorPressed(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed(J)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 101
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1108
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 1115
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1116
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1117
    new-instance v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper-IA;)V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 1118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 1119
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1121
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getRequestGenerator()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    .line 1126
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v0

    .line 1127
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->isAdvancedCoexLogicEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->setAdvancedLogicEnabled(Z)V

    .line 1129
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->isCoexFaceNonBypassHapticsDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 1128
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->setFaceHapticDisabledWhenNonBypass(Z)V

    .line 1132
    :try_start_51
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object p2

    new-instance v0, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class p0, Lcom/android/server/biometrics/BiometricService;

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1132
    invoke-interface {p2, v0, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception p0

    const-string p2, "BiometricService"

    const-string v0, "Failed to register user switch observer"

    .line 1142
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    :goto_6c
    invoke-static {p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->newInstance(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$createClientDeathReceiver$0(J)V
    .registers 3

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleClientDied(J)V

    return-void
.end method

.method private synthetic lambda$createClientDeathReceiver$1(J)V
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 23

    move-object v0, p0

    const-string v12, "BiometricService"

    .line 1365
    :try_start_3
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 1367
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v8

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    .line 1365
    invoke-static/range {v1 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v11

    .line 1370
    invoke-virtual {v11}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v1

    .line 1372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAuthenticate: modality("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), preAuthInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " promptInfo.isIgnoreEnrollmentState: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1379
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x12

    if-ne v2, v5, :cond_75

    goto :goto_8c

    .line 1393
    :cond_75
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1394
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v8, p9

    .line 1393
    invoke-interface {v8, v0, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_be

    :cond_8c
    :goto_8c
    move-object/from16 v8, p9

    .line 1385
    iget-boolean v1, v11, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_a6

    iget-boolean v1, v11, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_a6

    iget-object v1, v11, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 1386
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a6

    const v1, 0x8000

    move-object v10, p2

    .line 1387
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    goto :goto_a7

    :cond_a6
    move-object v10, p2

    :goto_a7
    move-object v1, p0

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move-wide/from16 v5, p7

    move v7, p1

    move-object/from16 v8, p9

    move-object/from16 v9, p3

    move-object v10, p2

    .line 1390
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b7} :catch_b8

    goto :goto_be

    :catch_b8
    move-exception v0

    const-string v1, "Remote exception"

    .line 1398
    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_be
    return-void
.end method


# virtual methods
.method public final authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .registers 40

    move-object/from16 v0, p0

    move-wide/from16 v10, p2

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating authSession with authRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "BiometricService"

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v1, :cond_44

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing AuthSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    .line 1426
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    const/4 v1, 0x0

    .line 1428
    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1431
    :cond_44
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v12, p6

    invoke-virtual {v1, v2, v12}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v19

    .line 1432
    new-instance v13, Lcom/android/server/biometrics/AuthSession;

    move-object v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1433
    invoke-virtual {v0, v10, v11}, Lcom/android/server/biometrics/BiometricService;->createSysUiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 1434
    invoke-virtual {v0, v10, v11}, Lcom/android/server/biometrics/BiometricService;->createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    move-result-object v7

    .line 1435
    invoke-virtual {v0, v10, v11}, Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v15

    iget-object v9, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/server/biometrics/BiometricService$Injector;->getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 1439
    invoke-virtual {v0, v10, v11}, Lcom/android/server/biometrics/BiometricService;->createSysUiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v26

    move-object/from16 v21, v8

    move-object/from16 v23, p1

    move/from16 v24, p6

    move-object/from16 v25, p8

    .line 1438
    invoke-virtual/range {v21 .. v26}, Lcom/android/server/biometrics/BiometricService$Injector;->createAuthSessionExt(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Landroid/hardware/biometrics/IBiometricSysuiReceiver;)Lcom/android/server/biometrics/SemAuthSessionExt;

    move-result-object v21

    move-object/from16 v8, p10

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-object/from16 v27, v13

    move-wide/from16 v12, p4

    move-object/from16 v28, v14

    move/from16 v14, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v1 .. v21}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/SemAuthSessionExt;)V

    move-object/from16 v1, v27

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1441
    :try_start_a4
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_b1

    :catch_a8
    move-exception v0

    move-object v1, v0

    const-string v0, "RemoteException"

    move-object/from16 v2, v28

    .line 1443
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b1
    return-void
.end method

.method public final checkInternalPermission()V
    .registers 3

    .line 970
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v1, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .registers 4

    .line 459
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .registers 4

    .line 550
    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 13
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 981
    invoke-virtual {v5, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 983
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 985
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v7, 0x0

    move v4, p2

    move-object v6, p1

    .line 983
    invoke-static/range {v0 .. v8}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createSysUiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .registers 4

    .line 503
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy Settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Sensors:"

    .line 1479
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 1483
    :cond_49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoexCoordinator: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1489
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .registers 5

    .line 1174
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_d

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getRequestId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 4

    .line 1467
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1468
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 23

    move-object v1, p0

    .line 1363
    iget-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    move-object v0, v12

    move/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p8

    move-wide v5, p2

    move-object v7, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleAuthenticationRejected(JI)V
    .registers 6

    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleAuthenticationRejected()"

    .line 1195
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "handleAuthenticationRejected: AuthSession is not current"

    .line 1201
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1205
    :cond_15
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationRejected(I)V

    return-void
.end method

.method public final handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V
    .registers 8

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAuthenticationSucceeded(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_24

    const-string/jumbo p0, "handleAuthenticationSucceeded: AuthSession is null"

    .line 1188
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1191
    :cond_24
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService;->isStrongBiometric(I)Z

    move-result p0

    invoke-virtual {p1, p3, p0, p4, p5}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationSucceeded(IZ[BLandroid/os/Bundle;)V

    return-void
.end method

.method public final handleAuthenticationTimedOut(JIIII)V
    .registers 9

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAuthenticationTimedOut(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_3c

    const-string/jumbo p0, "handleAuthenticationTimedOut: AuthSession is not current"

    .line 1218
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1222
    :cond_3c
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationTimedOut(IIII)V

    return-void
.end method

.method public final handleCancelAuthentication(J)V
    .registers 4

    .line 1448
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    const-string p2, "BiometricService"

    if-nez p1, :cond_f

    const-string/jumbo p0, "handleCancelAuthentication: AuthSession is not current"

    .line 1450
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 1455
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string/jumbo p1, "handleCancelAuthentication: AuthSession finished"

    .line 1457
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    :cond_23
    const/4 p1, 0x0

    .line 1461
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_26
    return-void
.end method

.method public final handleClientDied(J)V
    .registers 5

    .line 1316
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    const-string p2, "BiometricService"

    if-nez p1, :cond_f

    const-string/jumbo p0, "handleClientDied: AuthSession is not current"

    .line 1318
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1322
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->onClientDied()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1326
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    :cond_30
    const/4 p1, 0x0

    .line 1328
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_33
    return-void
.end method

.method public final handleOnAcquired(JIII)V
    .registers 6

    .line 1255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onAcquired: AuthSession is not current"

    .line 1257
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1261
    :cond_f
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/biometrics/AuthSession;->onAcquired(III)V

    return-void
.end method

.method public final handleOnDeviceCredentialPressed(J)V
    .registers 5

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onDeviceCredentialPressed"

    .line 1293
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "handleOnDeviceCredentialPressed: AuthSession is not current"

    .line 1296
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1300
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onDeviceCredentialPressed()V

    return-void
.end method

.method public final handleOnDialogAnimatedIn(J)V
    .registers 5

    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleOnDialogAnimatedIn"

    .line 1333
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    .line 1337
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1341
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onDialogAnimatedIn()V

    return-void
.end method

.method public final handleOnDismissed(JI[B)V
    .registers 5

    .line 1266
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_23

    .line 1268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onDismissed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AuthSession is not current"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1272
    :cond_23
    invoke-virtual {p1, p3, p4}, Lcom/android/server/biometrics/AuthSession;->onDialogDismissed(I[B)V

    .line 1274
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p1, :cond_2d

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/AuthSession;->destroy(I)V

    :cond_2d
    const/4 p1, 0x0

    .line 1276
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    return-void
.end method

.method public final handleOnError(JIIII)V
    .registers 9

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleOnError() sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_3c

    const-string/jumbo p0, "handleOnError: AuthSession is not current"

    .line 1234
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1239
    :cond_3c
    :try_start_3c
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    move-result p1

    if-eqz p1, :cond_57

    const-string/jumbo p1, "handleOnError: AuthSession finished"

    .line 1241
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    const/4 p1, 0x0

    .line 1245
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception p0

    const-string p1, "RemoteException"

    .line 1248
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_57
    :goto_57
    return-void
.end method

.method public final handleOnErrorFromSysUi(JII)V
    .registers 8

    .line 1560
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-nez v0, :cond_d

    const-string p0, "BiometricService"

    const-string/jumbo p1, "handleOnErrorFromSysUi: AuthSession is null"

    .line 1561
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq p3, v1, :cond_17

    const/16 v1, 0xa

    if-eq p3, v1, :cond_18

    move p4, v2

    goto :goto_18

    :cond_17
    const/4 p4, 0x2

    :cond_18
    :goto_18
    const/4 p3, 0x0

    .line 1576
    invoke-virtual {v0, p4, p3}, Lcom/android/server/biometrics/AuthSession;->setErrorValue(II)V

    const/4 p3, 0x0

    .line 1577
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(JI[B)V

    return-void
.end method

.method public final handleOnReadyForAuthentication(JI)V
    .registers 4

    .line 1349
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "BiometricService"

    const-string/jumbo p1, "handleOnReadyForAuthentication: AuthSession is not current"

    .line 1354
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1358
    :cond_f
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onCookieReceived(I)V

    return-void
.end method

.method public final handleOnSwitchingSensorPressed(I)V
    .registers 2

    .line 1551
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-nez p0, :cond_d

    const-string p0, "BiometricService"

    const-string/jumbo p1, "handleOnSwitchingSensorPressed: AuthSession is null"

    .line 1552
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1555
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->onSemSwitchingSensorPressed(I)V

    return-void
.end method

.method public final handleOnSystemEvent(JI)V
    .registers 6

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSystemEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_24

    const-string/jumbo p0, "handleOnSystemEvent: AuthSession is not current"

    .line 1308
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1312
    :cond_24
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onSystemEvent(I)V

    return-void
.end method

.method public final handleOnTryAgainPressed(J)V
    .registers 5

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    .line 1280
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_15

    const-string/jumbo p0, "handleOnTryAgainPressed: AuthSession is not current"

    .line 1285
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1289
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onTryAgainPressed()V

    return-void
.end method

.method public final initBiometricsTimestamp()V
    .registers 14

    .line 1505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1507
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initBiometricsTimestamp: user length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v5, "initBiometricsTimestamp: "

    if-eqz v3, :cond_103

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v3

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const-string v8, "biometrics_strong_enroll_timestamp"

    move v12, v3

    invoke-static/range {v7 .. v12}, Lcom/android/server/biometrics/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)J

    move-result-wide v6

    .line 1516
    sget-boolean v8, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v8, :cond_7b

    .line 1517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timestamp db = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_33

    const-wide/16 v6, 0x0

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->isAutoTime(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 1522
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_93
    :goto_93
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/biometrics/BiometricSensor;

    .line 1523
    invoke-virtual {v9}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v10

    const/16 v11, 0xf

    invoke-static {v10, v11}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 1526
    :try_start_ab
    iget-object v10, v9, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v10, v3, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 1527
    sget-boolean v10, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v10, :cond_ce

    .line 1528
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timestamp authenticator id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_ce
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_d2} :catch_d3

    goto :goto_f5

    :catch_d3
    move-exception v9

    .line 1534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 1539
    :cond_eb
    sget-boolean v5, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v5, :cond_f5

    const-string/jumbo v5, "initBiometricsTimestamp: No auto time"

    .line 1540
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    :goto_f5
    move-wide v10, v6

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x1

    const-string v8, "biometrics_strong_enroll_timestamp"

    move v12, v3

    invoke-static/range {v7 .. v12}, Lcom/android/server/biometrics/Utils;->putLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)V

    goto/16 :goto_33

    .line 1547
    :cond_103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isStrongBiometric(I)Z
    .registers 4

    .line 1162
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1163
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_6

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    return p0

    .line 1168
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 1497
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1e

    .line 1499
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/SemBioFgThread;->execute(Ljava/lang/Runnable;)V

    .line 1500
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->onBootComplete(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1153
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    .line 1154
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1155
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1156
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1158
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    return-void
.end method
