.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/LockoutConsumer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceAuthenticationClient"


# instance fields
.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

.field public final mBiometricPromptIgnoreList:[I

.field public final mBiometricPromptIgnoreListVendor:[I

.field public final mBundle:Landroid/os/Bundle;

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mKeyguardIgnoreList:[I

.field public final mKeyguardIgnoreListVendor:[I

.field public mLastAcquire:I

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPrivilegedAttr:I

.field public final mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdismissNotification(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZ)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    .line 110
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    move-object/from16 v23, v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/hardware/SensorPrivacyManager;

    move-object/from16 v0, p0

    .line 110
    invoke-direct/range {v0 .. v22}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZLandroid/hardware/SensorPrivacyManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZLandroid/hardware/SensorPrivacyManager;)V
    .registers 44
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "ZZ",
            "Landroid/hardware/SensorPrivacyManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move/from16 v15, p17

    move-object/from16 v17, p19

    move/from16 v18, p20

    move/from16 v20, p21

    const/16 v16, 0x0

    const/16 v19, 0x1

    .line 126
    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    const/16 v0, 0x17

    move-object/from16 v1, p0

    .line 89
    iput v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 509
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-wide/from16 v2, p4

    .line 131
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v0, p18

    .line 132
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v0, p19

    .line 133
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 134
    const-class v2, Landroid/app/NotificationManager;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v2, p22

    .line 135
    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700d3

    .line 138
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v3, 0x10700d6

    .line 140
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v3, 0x10700d5

    .line 142
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v3, 0x10700d8

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 149
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    .line 150
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 151
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->resetBundle()V

    const/4 v2, 0x0

    if-eqz v0, :cond_c0

    const-string/jumbo v3, "sem_privileged_attr"

    .line 153
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPrivilegedAttr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bundle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FaceAuthenticationClient"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 158
    :cond_c0
    iput v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 160
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 163
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v2

    if-eqz v2, :cond_e2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e2

    .line 166
    iget v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 169
    :cond_e2
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    move-result v2

    .line 172
    :cond_e6
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semSetDisplayId(I)V

    return-void
.end method


# virtual methods
.method public final dismissNotification()V
    .registers 4

    const-string v0, "FaceAuthenticationClient"

    const-string v1, "dismissNotification"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 500
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 501
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 503
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-eqz v0, :cond_20

    .line 504
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 505
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    :cond_20
    return-void
.end method

.method public final doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 230
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 231
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 232
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    .line 231
    invoke-interface {v0, v1, v2, p0}, Landroid/hardware/biometrics/face/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0

    .line 234
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final getAcquireIgnorelist()[I
    .registers 2

    .line 335
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_b
    return-object p0
.end method

.method public final getAcquireVendorIgnorelist()[I
    .registers 2

    .line 339
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_b
    return-object p0
.end method

.method public getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .registers 3

    const-string p0, "biometric"

    .line 448
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 447
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 451
    :try_start_a
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception p0

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBiometricPrompt: failed to get prompt info"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceAuthenticationClient"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPrivilegedAttr()I
    .registers 1

    .line 418
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    return p0
.end method

.method public handleFailedAttempt(I)I
    .registers 4

    const-string v0, "FaceAuthenticationClient"

    const-string/jumbo v1, "handleFailedAttempt"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    goto :goto_27

    .line 428
    :cond_1d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    .line 429
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result p0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method public handleLifecycleAfterAuth(Z)V
    .registers 3

    .line 273
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 4

    .line 350
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    const/4 p1, 0x4

    .line 281
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 282
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance p3, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 283
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 288
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 282
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 292
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mUpdatedAuthenticated:Z

    if-eqz p1, :cond_34

    .line 294
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->resetFailedAttempts(I)V

    goto :goto_73

    .line 296
    :cond_34
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p1

    .line 297
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_55

    .line 300
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p3

    const/4 v1, 0x7

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V

    goto :goto_73

    :catch_53
    move-exception p1

    goto :goto_66

    :cond_55
    const/4 p3, 0x2

    if-ne p1, p3, :cond_73

    .line 302
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p3

    const/16 v1, 0x9

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_65} :catch_53

    goto :goto_73

    :goto_66
    const-string p2, "FaceAuthenticationClient"

    const-string/jumbo p3, "onAuthenticated : Unable to notify listener, finishing"

    .line 305
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 5

    .line 362
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 363
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    .line 364
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    const/4 v2, 0x0

    .line 365
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 368
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 370
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    move-exception p1

    const-string v0, "FaceAuthenticationClient"

    const-string v1, "Failed to send authentication frame"

    .line 372
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onError(II)V
    .registers 14

    .line 316
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 319
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 325
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 319
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2d

    .line 328
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    .line 331
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void
.end method

.method public onLockoutPermanent()V
    .registers 10

    .line 396
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutPermanent()V

    .line 397
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v5

    .line 401
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    const/16 v6, 0x9

    const/4 v7, 0x0

    .line 400
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 404
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p0

    const-string v0, "FaceAuthenticationClient"

    const-string v1, "Remote exception"

    .line 406
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 10

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutTimed(J)V

    .line 381
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v3

    .line 385
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 388
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p0

    const-string p1, "FaceAuthenticationClient"

    const-string p2, "Remote exception"

    .line 390
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public final resetFailedAttempts(I)V
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public final shouldSendAcquiredMessage(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-ne p1, v2, :cond_11

    .line 344
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    .line 345
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0
.end method

.method public final showBackgroundAuthenticationNotificationIfNeeded()V
    .registers 7

    .line 464
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->hasPrivilegedAttr(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 465
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_71

    .line 466
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_71

    .line 469
    :cond_1e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    const/16 v1, 0x8

    if-nez v0, :cond_33

    .line 470
    new-instance v0, Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 471
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 473
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "authenticator"

    .line 475
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_6c

    .line 477
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 490
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 492
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 491
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 494
    :cond_6c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 178
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    const/4 p1, 0x1

    .line 179
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return-void
.end method

.method public startHalOperation()V
    .registers 9

    const-string v0, "FaceAuthenticationClient"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    :try_start_4
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v4, 0x2

    if-eqz v3, :cond_1d

    .line 194
    invoke-virtual {v3, v1, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x8

    const v4, 0x186a3

    .line 197
    invoke-virtual {p0, v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 202
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_83

    .line 207
    :cond_1d
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startOperation(I)V

    const-string v3, "authenticate START"

    .line 209
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 211
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 212
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonAuthenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V

    goto :goto_50

    .line 215
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 217
    :goto_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticate FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_74} :catch_75

    goto :goto_83

    :catch_75
    move-exception v3

    const-string v4, "Remote exception when requesting auth"

    .line 221
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 223
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_83
    return-void
.end method

.method public stopHalOperation()V
    .registers 5

    .line 241
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 246
    :try_start_8
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_23

    :catch_12
    move-exception v1

    const-string v2, "FaceAuthenticationClient"

    const-string v3, "Remote exception when requesting cancel"

    .line 251
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 253
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_23
    :goto_23
    return-void
.end method

.method public vibrateError()V
    .registers 3

    .line 434
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 437
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 438
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x71

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    goto :goto_27

    .line 440
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    :goto_27
    return-void
.end method

.method public wasUserDetected()Z
    .registers 2

    .line 262
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v0, 0xb

    if-eq p0, v0, :cond_10

    const/16 v0, 0x15

    if-eq p0, v0, :cond_10

    const/16 v0, 0x17

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 185
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 186
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
