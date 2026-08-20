.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;,
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;
    }
.end annotation


# static fields
.field public static final DB_KEY_GESTURE_CAL_STATE:Ljava/lang/String; = "fingerprint_gesture_calibration_state"

.field public static final DB_VALUE_GESTURE_STATE_INVERSE:I = 0x1

.field public static final DB_VALUE_GESTURE_STATE_NONE:I = -0x1

.field public static final DB_VALUE_GESTURE_STATE_NORMAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FingerprintService.GestureCal"


# instance fields
.field public mAlreadyDone:Z

.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSwipeDirection:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDbState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

.field public mIsGestureCalibrationInProgress:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field public mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public mSysUiSessionId:I


# direct methods
.method public static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnDismissed(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnError(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSysUiEvent(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnSysUiEvent(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricSysUiManager;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    .line 94
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 96
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 97
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    .line 98
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 5

    .line 86
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricSysUiManager;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;)V

    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    if-eqz v0, :cond_a

    .line 189
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;->onCalibrationFinished()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    return-void
.end method

.method public final handleOnDismissed(I)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/samsung/android/biometrics/SemBiometricConstants$GestureCalibrationDismissedReason;
        .end annotation
    .end param

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleOnDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.GestureCal"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    if-eqz v0, :cond_29

    return-void

    :cond_29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 178
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    goto :goto_40

    .line 180
    :cond_36
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->disableGestureOption(Landroid/content/Context;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOffGestureMode()V

    .line 183
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->finish()V

    .line 184
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    return-void
.end method

.method public final handleOnError(II)V
    .registers 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleOnError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService.GestureCal"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->disableGestureOption(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOffGestureMode()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->finish()V

    return-void
.end method

.method public final handleOnSysUiEvent(II)V
    .registers 5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintService.GestureCal"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->handleOnUiReady()V

    :cond_25
    return-void
.end method

.method public final handleOnUiReady()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    if-eqz v0, :cond_7

    .line 158
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;->onCalibrationStarted()V

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->turnOnGestureMode()V

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    return-void
.end method

.method public hasCalibrationData()Z
    .registers 2

    .line 137
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isCalibrationInProgress()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    return p0
.end method

.method public isInverseDirection()Z
    .registers 2

    .line 133
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final notifyGestureEvent(I)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onBootCompleted(Z)V
    .registers 4

    if-eqz p1, :cond_18

    .line 141
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_18

    const-string p1, "FingerprintService.GestureCal"

    const-string v0, "gesture function enabled, but No calibration data"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    .line 144
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    :cond_18
    return-void
.end method

.method public onGestureEvent(I)V
    .registers 3

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->notifyGestureEvent(I)V

    .line 230
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    if-ne v0, p1, :cond_b

    const/4 p1, 0x0

    .line 231
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    goto :goto_e

    :cond_b
    const/4 p1, 0x1

    .line 233
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    :goto_e
    return-void
.end method

.method public onGestureSettingChanged(Z)V
    .registers 4

    if-eqz p1, :cond_d

    .line 120
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->getCalibrationState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    goto :goto_17

    .line 122
    :cond_d
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;->setCalibrationState(Landroid/content/Context;I)V

    .line 123
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    .line 125
    :goto_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGestureSettingChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mDbState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService.GestureCal"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;

    return-void
.end method

.method public start(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mIsGestureCalibrationInProgress:Z

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mAlreadyDone:Z

    if-eqz p1, :cond_d

    const/16 p1, 0x4e21

    .line 204
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    goto :goto_11

    :cond_d
    const/16 p1, 0x4e22

    .line 206
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    .line 208
    :goto_11
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 209
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mCurrentSwipeDirection:I

    const-string v1, "KEY_FP_GESTURE_DIRECTION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiSessionId:I

    .line 212
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;)V

    return-void
.end method

.method public final turnOffGestureMode()V
    .registers 4

    .line 218
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    return-void
.end method

.method public final turnOnGestureMode()V
    .registers 4

    .line 223
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    return-void
.end method
