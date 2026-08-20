.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGestureCalibrator(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;
    .registers 3

    .line 113
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;
    .registers 2

    .line 108
    const-class p0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    return-object p0
.end method

.method public isDexMode(Landroid/content/Context;)Z
    .registers 2

    .line 117
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isDexMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isEnabledGestureSettingForSamsungPay(Landroid/content/ContentResolver;)Z
    .registers 5

    const-string p0, "fingerprint_gesture_spay"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 130
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1a

    .line 133
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz p0, :cond_19

    const-string p0, "fingerprint_gesture_spay_visible"

    .line 134
    invoke-static {p1, p0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_18

    move v0, v2

    :cond_18
    return v0

    :cond_19
    return v2

    :cond_1a
    return v0
.end method

.method public isEnabledGestureSettingForStatusBar(Landroid/content/ContentResolver;)Z
    .registers 4

    const-string p0, "fingerprint_gesture_quick"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 125
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    move v0, p1

    :cond_c
    return v0
.end method

.method public isFoldedInFlipType(Landroid/content/Context;)Z
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .registers 2

    .line 79
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 80
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isProximityPositive()Z
    .registers 1

    .line 84
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 85
    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result p0

    return p0
.end method

.method public registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 5

    const/4 p0, 0x0

    const/4 v0, -0x1

    .line 103
    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerUserSwitchObserver(Landroid/app/SynchronousUserSwitchObserver;)V
    .registers 3

    const-string p0, "FingerprintService.Gesture"

    .line 95
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    const-string p1, "Unable to register user switch observer"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method public sendBigDataForCollapseStatusBar()V
    .registers 5

    .line 151
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPGT"

    const-string v1, "CollapseNotificationPanel"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForExpandQuickSetting()V
    .registers 5

    .line 163
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPGT"

    const-string v1, "ExpandQuickSettingsPanel"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForExpandStatusBar()V
    .registers 5

    .line 157
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPGT"

    const-string v1, "ExpandNotificationPanel"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForSamsungPay()V
    .registers 5

    .line 145
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const-string v0, "FPGT"

    const-string v1, "SimpleSamsungPay"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public userActivityTouchEvent(Landroid/content/Context;)V
    .registers 5

    .line 89
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method
