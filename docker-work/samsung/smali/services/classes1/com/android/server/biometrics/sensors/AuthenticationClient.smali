.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/AuthenticationClient$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;"
    }
.end annotation


# static fields
.field public static final STATE_NEW:I = 0x0

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STARTED_PAUSED:I = 0x2

.field public static final STATE_STARTED_PAUSED_ATTEMPTED:I = 0x3

.field public static final STATE_STOPPED:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Biometrics/AuthenticationClient"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAllowBackgroundAuthentication:Z

.field public mAuthAttempted:Z

.field public mAuthSuccess:Z

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public mDisplayId:I

.field public mIsBackgroundAuthenticationByVendorPolicy:Z

.field public final mIsKeyguardBypassEnabled:Z

.field public final mIsRestricted:Z

.field public final mIsStrongBiometric:Z

.field public mIsVerifiedTopActivity:Z

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mOperationId:J

.field public mPromptPrivilegedFlags:I

.field public final mRequireConfirmation:Z

.field public mStartTimeMs:J

.field public mState:I
    .annotation build Lcom/android/server/biometrics/sensors/AuthenticationClient$State;
    .end annotation
.end field

.field public final mTaskStackListener:Landroid/app/TaskStackListener;

.field public mUpdatedAuthenticated:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsRestricted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPromptPrivilegedFlags(Lcom/android/server/biometrics/sensors/AuthenticationClient;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "ZZZ)V"
        }
    .end annotation

    move-object v12, p0

    move-object v13, p1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p12

    move/from16 v9, p19

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    .line 112
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 94
    iput v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    move/from16 v0, p15

    .line 114
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-wide/from16 v0, p6

    .line 115
    iput-wide v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    move/from16 v0, p11

    .line 116
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getActivityTaskManager()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 118
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 v0, p16

    .line 119
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    move-object/from16 v0, p17

    .line 120
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    move/from16 v0, p8

    .line 121
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    move/from16 v0, p18

    .line 122
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    move/from16 v0, p20

    .line 123
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsKeyguardBypassEnabled:Z

    .line 126
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method public cancel()V
    .registers 1

    .line 486
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 489
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 610
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->destroy()V

    .line 612
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public getActivityTaskManager()Landroid/app/ActivityTaskManager;
    .registers 1

    .line 150
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public getOperationId()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    return-wide v0
.end method

.method public getPromptPrivilegedFlags()I
    .registers 1

    .line 605
    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    return p0
.end method

.method public getProtoEnum()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getShowOverlayReason()I
    .registers 2

    .line 546
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x4

    return p0

    .line 548
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x3

    return p0

    .line 552
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isSettings()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x6

    return p0

    :cond_18
    const/4 p0, 0x5

    return p0
.end method

.method public getStartTimeMs()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    return-wide v0
.end method

.method public getState()I
    .registers 1
    .annotation build Lcom/android/server/biometrics/sensors/AuthenticationClient$State;
    .end annotation

    .line 515
    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return p0
.end method

.method public handleFailedAttempt(I)I
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 132
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    goto :goto_1b

    :cond_15
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    :cond_1b
    :goto_1b
    return v0
.end method

.method public abstract handleLifecycleAfterAuth(Z)V
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isBiometricPrompt()Z
    .registers 1

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCryptoOperation()Z
    .registers 5

    .line 181
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isKeyguard()Z
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardBypassEnabled()Z
    .registers 1

    .line 523
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsKeyguardBypassEnabled:Z

    return p0
.end method

.method public isRestricted()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    return p0
.end method

.method public final isSettings()Z
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAcquired(II)V
    .registers 3

    .line 428
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 430
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 431
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result p1

    if-nez p1, :cond_22

    .line 433
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object p1

    .line 434
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    :cond_22
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 15
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

    .line 187
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    move v3, p2

    .line 187
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requireConfirmation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Biometrics/AuthenticationClient"

    .line 192
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementCryptoAuthForUser(IZ)V

    goto :goto_a0

    .line 205
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    .line 208
    :goto_a0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v1, :cond_a9

    const-string v1, "Allowing background authentication, this is allowed only for platform or test invocations"

    .line 209
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_a9
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsBackgroundAuthenticationByVendorPolicy:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_b1

    move v1, v3

    goto :goto_e1

    .line 219
    :cond_b1
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-nez v1, :cond_e0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsVerifiedTopActivity:Z

    if-nez v1, :cond_e0

    if-eqz p2, :cond_e0

    .line 220
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 221
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 222
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v1

    goto :goto_e1

    :cond_e0
    move v1, v4

    :goto_e1
    const/4 v5, 0x2

    const/4 v6, -0x1

    const-string v7, "159249069"

    const/4 v8, 0x3

    const v9, 0x534e4554

    if-eqz v1, :cond_110

    const-string p2, "Failing possible background authentication"

    .line 227
    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v4

    if-eqz p2, :cond_101

    .line 232
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_102

    :cond_101
    move p2, v6

    :goto_102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v10, v3

    const-string p2, "Attempted background authentication"

    aput-object p2, v10, v5

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move p2, v4

    :cond_110
    if-eqz p2, :cond_183

    if-eqz v1, :cond_131

    .line 239
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v7, v2, v4

    if-eqz v1, :cond_124

    .line 240
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Successful background authentication!"

    aput-object v1, v2, v5

    invoke-static {v9, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 244
    :cond_131
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->markAlreadyDone()V

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 256
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 257
    :goto_13f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_154

    .line 258
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 261
    :cond_154
    iget-boolean p3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    if-eqz p3, :cond_172

    .line 262
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v6

    .line 263
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v9

    move-object v10, v1

    .line 262
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 267
    :cond_172
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object p3

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    invoke-virtual {p3, v2, v3, p0, v4}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationSucceeded(JLcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    goto :goto_1ac

    :cond_183
    if-eqz v1, :cond_18e

    const-string p1, "cancelling due to background auth"

    .line 326
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    goto :goto_1ac

    .line 331
    :cond_18e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v5

    if-eqz v5, :cond_19b

    .line 333
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->markAlreadyDone()V

    .line 336
    :cond_19b
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v6, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;

    invoke-direct {v6, p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationRejected(JLcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    .line 370
    :goto_1ac
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mUpdatedAuthenticated:Z

    return-void
.end method

.method public onError(II)V
    .registers 4

    .line 440
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    const/4 p2, 0x4

    .line 441
    iput p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 443
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object p2

    new-instance v0, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    return-void
.end method

.method public onLockoutPermanent()V
    .registers 4

    .line 397
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 398
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    .line 399
    new-instance v2, Lcom/android/server/biometrics/sensors/AuthenticationClient$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$4;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    const/16 v0, 0x9

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 4

    .line 379
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    .line 380
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object p2

    .line 381
    new-instance v0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    const/4 p1, 0x7

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    return-void
.end method

.method public semGetDisplayId()I
    .registers 1

    .line 589
    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mDisplayId:I

    return p0
.end method

.method public semHasPromptPrivilegedAttr(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public semIsAllowedBackgroundAuthentication()Z
    .registers 1

    .line 581
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    return p0
.end method

.method public semSetDisplayId(I)V
    .registers 2

    .line 585
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mDisplayId:I

    return-void
.end method

.method public semVerifyTopActivity()V
    .registers 2

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsVerifiedTopActivity:Z

    return-void
.end method

.method public final sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 6

    const-string v0, "Biometrics/AuthenticationClient"

    if-nez p1, :cond_a

    const-string p0, "Unable to sendAuthenticationCanceled, listener null"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    .line 418
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception p0

    const-string p1, "Remote exception"

    .line 422
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method

.method public setPromptPrivilegedFlags(I)V
    .registers 2

    .line 601
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 455
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 457
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_36

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In lockout mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ; disallowing authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x7

    goto :goto_31

    :cond_2f
    const/16 p1, 0x9

    :goto_31
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void

    .line 468
    :cond_36
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz p1, :cond_4c

    .line 469
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 471
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    instance-of v2, p1, Landroid/app/ActivityManager$SemProcessListener;

    if-eqz v2, :cond_4c

    .line 472
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    check-cast p1, Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 477
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting auth for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 480
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void
.end method

.method public final unregisterListenersForTaskStack()V
    .registers 5

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 566
    :try_start_4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v2, :cond_1a

    .line 567
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 569
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    instance-of v3, v2, Landroid/app/ActivityManager$SemProcessListener;

    if-eqz v3, :cond_1a

    .line 570
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    check-cast v2, Landroid/app/ActivityManager$SemProcessListener;

    .line 571
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 576
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    throw p0
.end method

.method public wasAuthAttempted()Z
    .registers 1

    .line 537
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    return p0
.end method

.method public wasAuthSuccessful()Z
    .registers 1

    .line 542
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    return p0
.end method

.method public abstract wasUserDetected()Z
.end method
