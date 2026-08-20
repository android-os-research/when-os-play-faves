.class public abstract Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
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

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mKeyguardIgnoreList:[I

.field public final mKeyguardIgnoreListVendor:[I

.field public mLastAcquire:I

.field public final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

.field public mPrivilegedAttr:I

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Landroid/os/CancellationSignal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
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
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-wide/from16 v7, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move/from16 v16, p17

    move-object/from16 v18, p18

    move/from16 v19, p20

    move/from16 v21, p21

    const/16 v17, 0x0

    const/16 v20, 0x1

    .line 107
    invoke-direct/range {v1 .. v21}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-wide/from16 v2, p4

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v0, p19

    .line 113
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 114
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700d3

    .line 117
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v2, 0x10700d6

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v2, 0x10700d5

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v2, 0x10700d8

    .line 123
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 128
    move-object/from16 v0, p18

    check-cast v0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    .line 129
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v0, :cond_87

    const-string/jumbo v3, "sem_privileged_attr"

    .line 131
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    goto :goto_89

    .line 133
    :cond_87
    iput v2, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 135
    :goto_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "biometric"

    .line 136
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    const/4 v3, 0x0

    .line 139
    :try_start_9a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v3
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a2} :catch_a3

    goto :goto_be

    :catch_a3
    move-exception v0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FaceAuthenticationClient getPrompt Info Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FaceAuthenticationClient"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    if-eqz v3, :cond_d4

    .line 144
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    if-eqz v0, :cond_d0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d0

    .line 147
    iget v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 150
    :cond_d0
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    move-result v2

    .line 153
    :cond_d4
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semSetDisplayId(I)V

    return-void
.end method


# virtual methods
.method public abstract daemonAuthenticate(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract daemonAuthenticationCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final dismissNotification()V
    .registers 4

    const-string v0, "FaceAuthenticationClient"

    const-string v1, "dismissNotification"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 398
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 399
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 401
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-eqz v0, :cond_20

    .line 402
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 403
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    :cond_20
    return-void
.end method

.method public final getAcquireIgnorelist()[I
    .registers 2

    .line 288
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_b
    return-object p0
.end method

.method public final getAcquireVendorIgnorelist()[I
    .registers 2

    .line 292
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_b
    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 1

    .line 322
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPrivilegedAttr()I
    .registers 1

    .line 326
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    return p0
.end method

.method public handleFailedAttempt(I)I
    .registers 4

    const-string v0, "FaceAuthenticationClient"

    const-string/jumbo v1, "handleFailedAttempt"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    goto :goto_27

    .line 336
    :cond_1d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    .line 337
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

    .line 230
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 4

    .line 305
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 308
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    .line 311
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->shouldSend(II)Z

    move-result v0

    .line 312
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

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    const/4 p1, 0x4

    .line 238
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 241
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->dismissNotification()V

    .line 242
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mUpdatedAuthenticated:Z

    if-eqz v5, :cond_15

    .line 244
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->resetFailedAttempts(I)V

    goto :goto_54

    .line 246
    :cond_15
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p1

    .line 247
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_36

    .line 250
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p3

    const/4 v1, 0x7

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V

    goto :goto_54

    :catch_34
    move-exception p1

    goto :goto_47

    :cond_36
    const/4 p3, 0x2

    if-ne p1, p3, :cond_54

    .line 252
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p3

    const/16 v1, 0x9

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_46} :catch_34

    goto :goto_54

    :goto_47
    const-string p2, "FaceAuthenticationClient"

    const-string/jumbo p3, "onAuthenticated : Unable to notify listener, finishing"

    .line 255
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 261
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v1

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 261
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    return-void
.end method

.method public onError(II)V
    .registers 14

    .line 273
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->dismissNotification()V

    .line 276
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 282
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 276
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 284
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void
.end method

.method public final resetFailedAttempts(I)V
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public setCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public final shouldSend(II)Z
    .registers 4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_f

    .line 297
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 299
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final showBackgroundAuthenticationNotificationIfNeeded()V
    .registers 7

    .line 362
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->hasPrivilegedAttr(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 363
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_72

    .line 364
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_72

    .line 367
    :cond_1e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-nez v0, :cond_33

    .line 368
    new-instance v0, Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    .line 369
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 371
    :cond_33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "authenticator"

    .line 373
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_6d

    .line 375
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 390
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 389
    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 392
    :cond_6d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 159
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    const/4 p1, 0x1

    .line 160
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return-void
.end method

.method public startHalOperation()V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    const/4 v3, 0x2

    .line 175
    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    const v1, 0x186a3

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 188
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOperationId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->daemonAuthenticate(J)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_36

    :catch_26
    move-exception v0

    const-string v3, "FaceAuthenticationClient"

    const-string v4, "Remote exception when requesting auth"

    .line 194
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_36
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->dismissNotification()V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->daemonAuthenticationCancel()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_19

    :catch_7
    move-exception v0

    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 210
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 212
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_19
    return-void
.end method

.method public vibrateError()V
    .registers 3

    .line 342
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 345
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 346
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x71

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    goto :goto_27

    .line 348
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

    .line 220
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v0, 0xb

    if-eq p0, v0, :cond_c

    const/16 v0, 0x15

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 166
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
