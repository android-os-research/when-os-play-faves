.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;
.super Ljava/lang/Object;
.source "SemFpSpenConstraintHandler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# static fields
.field public static final ACTION_FOD_UPDATE:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_FOD_UPDATE_TSP_BLOCK:I = 0xe2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_FOD_UPDATE_TSP_UNBLOCK:I = 0xe1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_FOD_EXTRA_INFO:Ljava/lang/String; = "info"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SemFpSpenConstraintHandler"

.field public static final TSP_BLOCK_BR_EVENT_HANDLE_DELAY:I = 0xfa

.field public static final TSP_BLOCK_CLIENT_START_HANDLE_DELAY:I = 0xa


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public mIsTspBlocked:Z

.field public final mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field public mTspBrReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QTg8AwjuJ_EuTVzuUBYSSU23Uqo(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->notifyTspBlockStatusToHal()V

    return-void
.end method

.method public static synthetic $r8$lambda$hE_yUp9bIlUhaWQDYv-6RE550Sk(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 48
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    .line 49
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 50
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleTspBlockAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFpSpenConstraintHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->notifyTspBlockStatusToHal()V

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semNotifyTspBlockState(Z)V

    return-void
.end method


# virtual methods
.method public handleTspBlockAction(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final notifyTspBlockStatusToHal()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 136
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    const/16 v1, 0x23

    const/4 v2, 0x0

    .line 135
    invoke-interface {v0, v1, p0, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    return-void
.end method

.method public onAcquire(IIII)V
    .registers 5

    const/4 p1, 0x6

    if-ne p3, p1, :cond_f

    const/16 p1, 0x2711

    if-ne p4, p1, :cond_f

    .line 116
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    :cond_f
    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEnrollStarted(I)V
    .registers 5

    .line 125
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSpenEvent(I)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v0, :cond_11

    .line 98
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 101
    :cond_11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez p0, :cond_16

    return-void

    :cond_16
    const/16 v0, 0x7532

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 105
    :goto_1d
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyBleSpenChargeLockState(Z)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_3d

    :catch_21
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSpenEvent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFpSpenConstraintHandler"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public setTspBlockState(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    return-void
.end method

.method public start()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    .line 60
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_c

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->startObserveTspBlockEvent()V

    :cond_c
    return-void
.end method

.method public final startObserveTspBlockEvent()V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 69
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mH:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method
