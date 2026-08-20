.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "FingerprintService.Ext"


# instance fields
.field public mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCaptureStartedTime:J

.field public final mContext:Landroid/content/Context;

.field public mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

.field public mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

.field public mGestureManager:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

.field public final mHandler:Landroid/os/Handler;

.field public mIFAAFlag:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIconDrawnTime:J

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

.field public final mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLatestSensorStatus:I

.field public final mLockForAodCtrl:Ljava/lang/Object;

.field public mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8YbPpkf4p_7Cdg4hGI5KBy0uEG4(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->lambda$setScreenStatusFromKeyguard$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJVnuSZgSr_tImHfN6F_FFH-IdA(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->lambda$setCalibrationMode$3(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lhsu1EknjK1RJUbx0VoWn2HvCL0(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->lambda$removeMaskView$2(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPQorLmwFYXYLOOKWCLGBp33WBA(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->lambda$addMaskView$1(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleActionScreenOff(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleActionScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleActionScreenOn(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleActionScreenOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleActionUserRemoved(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleActionUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 62
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;)V"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 156
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mServiceProviders:Ljava/util/List;

    .line 158
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    return-void
.end method

.method public static synthetic lambda$addMaskView$1(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 693
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$removeMaskView$2(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 702
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCalibrationMode$3(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    .line 772
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setScreenStatusFromKeyguard$0(Z)V
    .registers 3

    .line 477
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_11

    if-nez p1, :cond_11

    .line 478
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 479
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleQcomForceQDB()V

    .line 482
    :cond_11
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p1, :cond_2c

    .line 483
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_25

    .line 484
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOn()V

    goto :goto_2c

    .line 486
    :cond_25
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOff()V

    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public acquireDvfs(I)V
    .registers 4

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adquireDvfs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireFingerprintDvfs(Landroid/content/Context;I)V

    return-void
.end method

.method public addMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMaskView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2b

    .line 692
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cancelUnbind()V

    .line 693
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-object p1
.end method

.method public addProvider(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 2

    .line 181
    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    return-void
.end method

.method public applyAndClearIFAAFlag(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 936
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    if-eqz v0, :cond_36

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFAA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintService.Ext"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "EXTRA_KEY_AUTH_FLAG"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 939
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    :cond_36
    return-void
.end method

.method public canUseFingerprint(ZZ)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_49

    if-nez p2, :cond_49

    .line 189
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 191
    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v4

    .line 192
    instance-of v5, v4, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz v5, :cond_49

    .line 193
    check-cast v4, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 194
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 195
    invoke-virtual {v4, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semHasPromptPrivilegedAttr(I)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semGetDisplayId()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/android/server/biometrics/Utils;->isTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 197
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_dc

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 202
    :cond_49
    :try_start_49
    sget-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v4, :cond_cb

    .line 204
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isOneHandMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_88

    if-eqz p1, :cond_75

    if-nez p2, :cond_75

    .line 206
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x1040ced

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 206
    invoke-static {p1, p2, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 211
    :cond_75
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x1389

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_49 .. :try_end_84} :catchall_dc

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 216
    :cond_88
    :try_start_88
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_cb

    if-eqz p1, :cond_b8

    if-nez p2, :cond_b8

    .line 218
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    const p2, 0x1040cee

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x1040ceb

    .line 219
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 218
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p2, p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 222
    :cond_b8
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x138b

    .line 223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c7
    .catchall {:try_start_88 .. :try_end_c7} :catchall_dc

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_cb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_dc
    move-exception p0

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    throw p0
.end method

.method public final dispatchHalInfoToAnalytics()V
    .registers 4

    .line 999
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1004
    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorInfo(IZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    const-string v2, "UID : "

    .line 1008
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2f

    add-int/lit8 v2, v2, 0x6

    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_2f
    const-string v1, ""

    :goto_31
    move-object v2, v1

    .line 1011
    :cond_32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetDaemonSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpHalInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    move-exception p0

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchHalInfoToAnalytics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Ext"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 945
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " latest sensor status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Max Template : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semGetMaxTemplateNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    if-eqz v0, :cond_35

    .line 948
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->dump(Ljava/io/PrintWriter;)V

    .line 950
    :cond_35
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_44

    .line 951
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 953
    :cond_44
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpDump(Ljava/io/PrintWriter;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_67

    :catch_4c
    move-exception p0

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dump: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService.Ext"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-void
.end method

.method public forceCBGE()V
    .registers 4

    .line 234
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_d

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    :cond_d
    return-void
.end method

.method public final getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 991
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 993
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDaemonVersion()Ljava/lang/String;
    .registers 1

    .line 538
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 540
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetDaemonSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public getRemainingLockoutTime(I)I
    .registers 2

    .line 506
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 508
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetRemainingLockoutTime(I)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getSecurityLevel()I
    .registers 1

    .line 515
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 517
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSecurityLevel()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public getSensorAreaMarginFromBottomForFod()I
    .registers 2

    .line 650
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_17

    .line 651
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 652
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-eqz v0, :cond_17

    .line 653
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 654
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getSensorAreaMarginFromBottomForFod(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public getSensorInfo()Ljava/lang/String;
    .registers 3

    .line 547
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 549
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorInfo(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, ""

    return-object p0
.end method

.method public getSensorStatus()I
    .registers 5

    .line 715
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_8

    const p0, 0x186c8

    return p0

    :cond_8
    const/4 v0, -0x2

    .line 719
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 721
    invoke-interface {v1, v0, v2, v3, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result v0

    .line 724
    :cond_16
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    .line 725
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogSensorStatus(I)V

    return v0
.end method

.method public getSensorTestResult([B)I
    .registers 5

    .line 462
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_f

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 464
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x2

    return p0
.end method

.method public final getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mServiceProviders:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 337
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mServiceProviders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrustAppVersion()Ljava/lang/String;
    .registers 5

    .line 579
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    const/16 v1, 0x32

    new-array v1, v1, [B

    const/16 v2, 0x2710

    const/4 v3, 0x0

    .line 582
    invoke-interface {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p0

    if-lez p0, :cond_32

    .line 584
    invoke-static {v1, p0}, Lcom/android/server/biometrics/Utils;->byteArrayToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 585
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_32

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustApp Version: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUdfpsSensorArea(IILandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 5

    .line 637
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1c

    if-nez p1, :cond_11

    .line 640
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRectForKeyguard(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 642
    :cond_11
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getFodSensorAreaRect(Landroid/content/Context;ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 645
    :cond_1c
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getUserIdList()[Ljava/lang/String;
    .registers 5

    .line 524
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 527
    invoke-interface {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p0

    if-lez p0, :cond_22

    .line 529
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p0, ":"

    .line 530
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    return-object v0
.end method

.method public final handleActionScreenOff()V
    .registers 1

    .line 400
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p0, :cond_b

    .line 401
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOff()V

    :cond_b
    return-void
.end method

.method public final handleActionScreenOn()V
    .registers 2

    .line 406
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_e

    .line 407
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOn()V

    .line 408
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    :cond_e
    return-void
.end method

.method public final handleActionUserRemoved(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 377
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_USER_REMOVED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintService.Ext"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_21

    return-void

    .line 383
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_2c

    return-void

    .line 387
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 389
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    const-string v7, "FingerprintService.Ext"

    move v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    .line 392
    :cond_42
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_4d

    .line 393
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    if-eqz p0, :cond_4d

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->onUserRemoved(I)V

    :cond_4d
    return-void
.end method

.method public final handleBioSysDvfsControl(IJ)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_c

    const/16 p1, 0x7d0

    goto :goto_d

    :cond_c
    long-to-int p1, p2

    .line 903
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->acquireDvfs(I)V

    goto :goto_14

    .line 906
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->releaseDvfs()V

    :goto_14
    return-void
.end method

.method public final handleBioSysHwLightSourceControl(I)V
    .registers 2

    .line 894
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    if-ne p1, p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_e

    const-string p0, "1"

    goto :goto_10

    :cond_e
    const-string p0, "0"

    .line 897
    :goto_10
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->setHwLightMode(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final handleBioSysOpticalControl(IJ)V
    .registers 4

    .line 911
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    if-ne p1, p0, :cond_f

    .line 913
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->restoreFunctionForLightSource(J)V

    goto :goto_18

    :cond_f
    if-nez p1, :cond_18

    .line 915
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->disableFunctionForLightSource()V

    :cond_18
    :goto_18
    return-void
.end method

.method public final handleBioSysTspControl(I)V
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_c

    .line 887
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    goto :goto_16

    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 889
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    :cond_16
    :goto_16
    return-void
.end method

.method public handleBioSysUiRequest(IIJLjava/lang/String;)I
    .registers 9

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleBioSysUiRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "FingerprintService.Ext"

    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 p5, 0x64

    const/4 v2, 0x0

    if-eq p1, p5, :cond_84

    const/4 p5, 0x1

    packed-switch p1, :pswitch_data_90

    goto :goto_87

    .line 842
    :pswitch_39
    :try_start_39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    goto :goto_87

    .line 839
    :pswitch_40
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIconDrawnTime:J

    goto :goto_87

    .line 810
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestAodGone()V

    goto :goto_87

    .line 833
    :pswitch_47
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleTouchEvent(IJ)V

    goto :goto_87

    .line 830
    :pswitch_4b
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysDvfsControl(IJ)V

    goto :goto_87

    .line 827
    :pswitch_4f
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysOpticalControl(IJ)V

    goto :goto_87

    .line 824
    :pswitch_53
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    goto :goto_87

    .line 816
    :pswitch_5a
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysHwLightSourceControl(I)V

    goto :goto_87

    .line 813
    :pswitch_5e
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysTspControl(I)V

    goto :goto_87

    :pswitch_62
    if-ne p2, p5, :cond_65

    goto :goto_66

    :cond_65
    move p5, v2

    .line 807
    :goto_66
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestDozeHLPM(Z)V

    goto :goto_87

    :pswitch_6a
    if-ne p2, p5, :cond_6d

    goto :goto_6e

    :cond_6d
    move p5, v2

    .line 804
    :goto_6e
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestDozeMode(Z)V

    goto :goto_87

    .line 819
    :pswitch_72
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_87

    .line 820
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getOpticalSensorHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;

    move-result-object p0

    if-ne p2, p5, :cond_7d

    goto :goto_7e

    :cond_7d
    move p5, v2

    :goto_7e
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->setDisplayStateLimit(Z)V

    goto :goto_87

    :catchall_82
    move-exception p0

    goto :goto_8b

    .line 836
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleQcomForceQDB()V
    :try_end_87
    .catchall {:try_start_39 .. :try_end_87} :catchall_82

    .line 846
    :cond_87
    :goto_87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 847
    throw p0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6a
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_39
    .end packed-switch
.end method

.method public final handleQcomForceQDB()V
    .registers 4

    .line 1018
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_11

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_11

    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1021
    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    :cond_11
    return-void
.end method

.method public final handleTouchEvent(IJ)V
    .registers 14

    .line 961
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 965
    :cond_7
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_10

    const-wide/16 v1, 0x0

    goto :goto_14

    .line 966
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    :goto_14
    move-wide v8, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3b

    .line 968
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v1, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(JIIIFF)V

    .line 970
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz p0, :cond_45

    .line 971
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    long-to-int p1, v8

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    const-wide/32 v1, 0xffff

    and-long/2addr p2, v1

    long-to-int p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpSetOpticalInfo(III)V

    goto :goto_45

    :cond_3b
    const/4 p0, 0x1

    if-ne p1, p0, :cond_45

    .line 976
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result p0

    invoke-interface {v0, v8, v9, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(JI)V

    :cond_45
    :goto_45
    return-void
.end method

.method public hasFeature(I)Z
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_11

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 442
    :cond_b
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

    return p0

    .line 440
    :cond_e
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    return p0

    .line 438
    :cond_11
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    return p0
.end method

.method public isEnrollSession()Z
    .registers 1

    .line 922
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 923
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semIsEnrollSession()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isTemplateDbCorrupted()Z
    .registers 5

    .line 709
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [B

    .line 710
    invoke-interface {p0, v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public moveSensorIconInDisplay()V
    .registers 7

    .line 662
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 663
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-nez v1, :cond_9

    return-void

    .line 666
    :cond_9
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 667
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getSysUiManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    const/16 v1, 0x72

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 669
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getUdfpsHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getSensorIconRandomPos(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 667
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    .line 670
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const-string v3, "FPMV"

    .line 671
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3c
    return-void
.end method

.method public onAcquire(IIII)V
    .registers 5

    const/4 p1, 0x6

    if-ne p3, p1, :cond_d

    const/16 p1, 0x2712

    if-ne p4, p1, :cond_d

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mCaptureStartedTime:J

    :cond_d
    return-void
.end method

.method public final onBootActivityManagerReady()V
    .registers 3

    .line 255
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_16

    .line 256
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->onBootActivityManagerReady(Landroid/content/Context;)V

    .line 257
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->onBootActivityManagerReady(Landroid/content/Context;)V

    :cond_16
    return-void
.end method

.method public final onBootBootCompleted()V
    .registers 2

    .line 281
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mServiceProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 282
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->onBootComplete()V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 242
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/16 v0, 0x226

    if-ne p1, v0, :cond_23

    .line 246
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->onBootActivityManagerReady()V

    goto :goto_32

    :cond_23
    const/16 v0, 0x258

    if-ne p1, v0, :cond_2b

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->onBootThirdPartyAppsCanStart()V

    goto :goto_32

    :cond_2b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_32

    .line 250
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->onBootBootCompleted()V

    :cond_32
    :goto_32
    return-void
.end method

.method public final onBootThirdPartyAppsCanStart()V
    .registers 4

    .line 262
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerPersistentBroadcast()V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 266
    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startGestureManagerIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startSpenConstrainHandlerIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startWirelessPowerMonitorIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startOneHandModeMonitorIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startProtectiveFilmGuideIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startScreenNotifierIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 273
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_2f

    .line 274
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetOpticalBrightnessConfigs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->onBootThirdPartyAppsCanStart(Landroid/content/Context;[Ljava/lang/String;)V

    .line 277
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startDisplayStateMonitorIfNeeded()V

    return-void
.end method

.method public onHalStarted()V
    .registers 2

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 167
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->dispatchHalInfoToAnalytics()V

    return-void
.end method

.method public openTrustAppSession()Z
    .registers 1

    .line 731
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 735
    :cond_8
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semOpenTzSession()V

    const/4 p0, 0x1

    return p0
.end method

.method public pauseEnroll()Z
    .registers 2

    .line 741
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 742
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v0, :cond_f

    .line 743
    check-cast p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->pause()V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public registerAodController(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .registers 5

    const-string v0, "FingerprintService.Ext"

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAodController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    if-nez v1, :cond_29

    .line 559
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 561
    :cond_29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->registerController(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    .line 562
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_30

    throw p0
.end method

.method public registerDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I
    .registers 2

    .line 783
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    if-eqz p0, :cond_9

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->registerCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final registerIntentForScreenOnOffAndTspClientIfNeeded()V
    .registers 5

    .line 419
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-nez v0, :cond_5

    return-void

    .line 422
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 425
    :cond_c
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerIntentForUserRemoved()V
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerPersistentBroadcast()V
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 356
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerIntentForUserRemoved()V

    .line 373
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerIntentForScreenOnOffAndTspClientIfNeeded()V

    return-void
.end method

.method public releaseDvfs()V
    .registers 3

    .line 986
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 5

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeMaskView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_25

    .line 702
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final requestAodGone()V
    .registers 2

    .line 878
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    if-eqz p0, :cond_a

    .line 880
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->hideAodScreen()V

    .line 882
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final requestDozeHLPM(Z)V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    if-nez v1, :cond_e

    .line 867
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    :cond_e
    if-eqz p1, :cond_16

    .line 870
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->turnOnDozeHlpmMode()V

    goto :goto_1b

    .line 872
    :cond_16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->turnOffDozeHlpmMode()V

    .line 874
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final requestDozeMode(Z)V
    .registers 4

    .line 852
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    if-nez v1, :cond_e

    .line 854
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    :cond_e
    if-eqz p1, :cond_16

    .line 857
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->turnOnDozeMode()V

    goto :goto_1b

    .line 859
    :cond_16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->turnOffDozeMode()V

    .line 861
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public requestProcessFIDO(I[B[B)I
    .registers 5

    .line 497
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 499
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semProcessFidoCommand(II[B[B)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x2

    return p0
.end method

.method public resumeEnroll()Z
    .registers 2

    .line 751
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 752
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v0, :cond_f

    .line 753
    check-cast p0, Lcom/android/server/biometrics/sensors/EnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->resume()V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public runSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I
    .registers 11

    .line 451
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 453
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetSensorId()I

    move-result v1

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semScheduleSensorTest(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, -0x2

    return p0
.end method

.method public setBouncerScreen(I)V
    .registers 4

    .line 678
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1a

    .line 679
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 680
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->getSysUiManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p0

    const/16 v0, 0x75

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    :cond_1a
    return-void
.end method

.method public setCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 6

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCalibrationMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2d

    .line 771
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public setFlagForIFAA(ILjava/lang/String;)V
    .registers 5

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlagForIFAA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 930
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIFAAFlag:Landroid/util/Pair;

    :cond_30
    return-void
.end method

.method public setFodStrictMode(Z)V
    .registers 3

    .line 761
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz p0, :cond_22

    .line 762
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFodStrictMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Ext"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setStrictMode(Z)V

    :cond_22
    return-void
.end method

.method public setScreenStatusFromKeyguard(Z)V
    .registers 5

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenStatusFromKeyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x73

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 476
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3b

    .line 491
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    :cond_3b
    return-void
.end method

.method public final startDisplayStateMonitorIfNeeded()V
    .registers 3

    .line 343
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_5

    return-void

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    if-nez v0, :cond_13

    .line 347
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createDisplayStateMonitor(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    .line 349
    :cond_13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->start()V

    return-void
.end method

.method public final startGestureManagerIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 314
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createGestureManager(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    .line 316
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->start()V

    :cond_11
    return-void
.end method

.method public final startOneHandModeMonitorIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 3

    .line 306
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_f

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createOneHandModeMonitor(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->start()V

    :cond_f
    return-void
.end method

.method public final startProtectiveFilmGuideIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 321
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_17

    .line 322
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createProtectiveFilmGuide(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 323
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->startMonitoring()V

    .line 324
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->updateGuideStatus(I)V

    :cond_17
    return-void
.end method

.method public startRequest(Landroid/os/IBinder;I[B[BIILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;I)I
    .registers 10

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "startRequest("

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, ") called from "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ", "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p6, "FingerprintService.Ext"

    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p1

    if-nez p1, :cond_3b

    const-string/jumbo p0, "startRequest: No provider"

    .line 613
    invoke-static {p6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_3b
    const/16 p6, 0x3f2

    if-ne p2, p6, :cond_6a

    .line 619
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p1

    .line 621
    instance-of p1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 p2, 0x0

    if-eqz p1, :cond_69

    .line 622
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    const-wide/16 p3, 0x2710

    if-eqz p1, :cond_58

    .line 623
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mCaptureStartedTime:J

    add-long/2addr p0, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    :goto_55
    sub-long/2addr p0, p3

    long-to-int p0, p0

    goto :goto_65

    .line 624
    :cond_58
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p1, :cond_64

    .line 625
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIconDrawnTime:J

    add-long/2addr p0, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    goto :goto_55

    :cond_64
    move p0, p2

    .line 627
    :goto_65
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_69
    return p2

    .line 631
    :cond_6a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    const-string p6, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {p0, p6}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 632
    invoke-interface {p1, p2, p5, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result p0

    return p0
.end method

.method public final startScreenNotifierIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 3

    .line 329
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 331
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->start()V

    return-void
.end method

.method public final startSpenConstrainHandlerIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 3

    .line 287
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_17

    .line 288
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_17

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createSpenConstraintHandler(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->start()V

    :cond_17
    return-void
.end method

.method public final startWirelessPowerMonitorIfNeeded(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 3

    .line 298
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v0, :cond_e

    .line 299
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    .line 301
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->start()V

    :cond_e
    return-void
.end method

.method public unregisterAodController()V
    .registers 4

    const-string v0, "FingerprintService.Ext"

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterAodController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    if-eqz v1, :cond_28

    .line 570
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->unregisterController()V

    const/4 v1, 0x0

    .line 571
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 573
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public unregisterDisplayStateCallback()V
    .registers 1

    .line 791
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;

    if-eqz p0, :cond_7

    .line 792
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->unregisterCallback()V

    :cond_7
    return-void
.end method

.method public updateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V
    .registers 6

    .line 595
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTrustApp: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 600
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V

    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
