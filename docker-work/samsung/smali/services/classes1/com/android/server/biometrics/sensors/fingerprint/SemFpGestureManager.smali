.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;
    }
.end annotation


# static fields
.field public static final ACTION_FINGERPRINT_GESTURE_SAMSUNG_PAY:Ljava/lang/String; = "com.samsung.android.spay.gesture.fingerprint"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DB_SPAY_GESTURE_MENU_VISIBLE:Ljava/lang/String; = "fingerprint_gesture_spay_visible"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERMISSION_SAMSUNG_PAY_SIMPLE_PAY:Ljava/lang/String; = "com.samsung.android.spay.permission.SIMPLE_PAY"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FingerprintService.Gesture"


# instance fields
.field public mBroadCastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

.field public mContentObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

.field public mIsEnabledGestureForSamsungPay:Z

.field public mIsEnabledGestureForStatusBar:Z

.field public mIsEnabledGestureMainSetting:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field public mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnabledGestureMainSetting(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnChangeSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleOnChangeSettingValue()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenOffBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleScreenOffBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenOnBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleScreenOnBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOffGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOffGestureMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOnGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGestureSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 169
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 177
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    .line 178
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final canHandleGestureEvent(I)Z
    .registers 6
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintGestureEvent;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isCalibrationInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 227
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_11

    return v1

    .line 231
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "FingerprintService.Gesture"

    if-nez v0, :cond_24

    const-string/jumbo p0, "handleGestureAction: SKIP gesture action because of interactive status"

    .line 232
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 235
    :cond_24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo p0, "handleGestureAction: SKIP gesture action because of DeX Mode"

    .line 236
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_35
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_4a

    .line 239
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isFoldedInFlipType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string/jumbo p0, "handleGestureAction: SKIP gesture action because of flip folded status"

    .line 241
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4a
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NAVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleOnChangeSettingValue()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isCalibrationInProgress()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "FingerprintService.Gesture"

    const-string v0, "calibration in progress.."

    .line 337
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    .line 341
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz v0, :cond_2b

    .line 342
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v0, :cond_2b

    .line 343
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->hasCalibrationData()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 344
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->startCalibration()V

    return-void

    .line 348
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz v0, :cond_33

    .line 349
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    goto :goto_36

    .line 351
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOffGestureMode()V

    :goto_36
    return-void
.end method

.method public final handleScreenOffBroadcast()V
    .registers 4

    .line 437
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_5

    return-void

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isProximityPositive()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 441
    :cond_17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    :cond_20
    return-void
.end method

.method public final handleScreenOnBroadcast()V
    .registers 4

    .line 447
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_5

    return-void

    .line 450
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isProximityPositive()Z

    move-result v0

    if-nez v0, :cond_20

    .line 451
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    :cond_20
    return-void
.end method

.method public final handleSwipeDownEvent()V
    .registers 3

    .line 265
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-nez v0, :cond_5

    return-void

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 270
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    .line 271
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForExpandQuickSetting()V

    goto :goto_24

    .line 273
    :cond_1c
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    .line 274
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForExpandStatusBar()V

    :goto_24
    return-void
.end method

.method public final handleSwipeUpEvent()V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    .line 249
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 250
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "FingerprintService.Gesture"

    const-string/jumbo v2, "handleGestureAction: QuickPanel Expanded"

    .line 251
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1e
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 254
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForCollapseStatusBar()V

    goto :goto_48

    .line 255
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    if-eqz v0, :cond_48

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay.gesture.fingerprint"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForSamsungPay()V

    :cond_48
    :goto_48
    return-void
.end method

.method public onGestureEvent(I)V
    .registers 7
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintGestureEvent;
        .end annotation
    .end param

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    const-string v1, "FingerprintService.Gesture"

    const/16 v2, 0x4e22

    const/16 v3, 0x4e21

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isInverseDirection()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "inverse action"

    .line 195
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1a

    move p1, v2

    goto :goto_1d

    :cond_1a
    if-ne p1, v2, :cond_1d

    move p1, v3

    .line 203
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->canHandleGestureEvent(I)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    .line 207
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->userActivityTouchEvent(Landroid/content/Context;)V

    if-eq p1, v3, :cond_34

    if-eq p1, v2, :cond_30

    goto :goto_52

    .line 213
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleSwipeDownEvent()V

    goto :goto_52

    .line 210
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleSwipeUpEvent()V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_37} :catch_38

    goto :goto_52

    :catch_38
    move-exception p0

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGestureEvent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void
.end method

.method public onHalStarted()V
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    :cond_7
    return-void
.end method

.method public final registerBroadcast()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 414
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerContentObserver()V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_5

    return-void

    .line 318
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 325
    :try_start_e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 328
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    const-string v2, "fingerprint_gesture_spay"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_2e} :catch_2f

    goto :goto_4a

    :catch_2f
    move-exception p0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to register content observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Gesture"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void
.end method

.method public final registerUserSwitchObserver()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;

    if-eqz v0, :cond_5

    return-void

    .line 294
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;

    .line 311
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerUserSwitchObserver(Landroid/app/SynchronousUserSwitchObserver;)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerUserSwitchObserver()V

    .line 283
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerContentObserver()V

    .line 284
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz v0, :cond_28

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->createGestureCalibrator(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    .line 286
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->onBootCompleted(Z)V

    :cond_28
    return-void
.end method

.method public final startCalibration()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-nez v0, :cond_5

    return-void

    .line 360
    :cond_5
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->setCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->start(Z)V

    return-void
.end method

.method public final turnOffGestureMode()V
    .registers 5

    .line 402
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_5

    return-void

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    .line 407
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->unregisterBroadcast()V

    return-void
.end method

.method public final turnOnGestureMode()V
    .registers 5

    .line 393
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_5

    return-void

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerBroadcast()V

    return-void
.end method

.method public final unregisterBroadcast()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    return-void

    .line 460
    :cond_5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final updateGestureSettingValue()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isEnabledGestureSettingForStatusBar(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    .line 382
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isEnabledGestureSettingForSamsungPay(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    .line 383
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    .line 385
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v1, :cond_29

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->onGestureSettingChanged(Z)V

    .line 388
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGestureSettingValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Gesture"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
