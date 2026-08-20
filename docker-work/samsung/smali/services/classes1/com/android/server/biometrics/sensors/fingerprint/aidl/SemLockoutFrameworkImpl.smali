.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;
.super Lcom/android/server/biometrics/sensors/LockoutCache;
.source "SemLockoutFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;,
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

.field public static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field public static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field public static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field public static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SemLockoutFrameworkImpl"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mFailedAttempts:Landroid/util/SparseIntArray;

.field public final mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public final mRemainingLockoutTime:Landroid/util/SparseLongArray;

.field public final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V
    .registers 9

    .line 57
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    .line 59
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 60
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 61
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 62
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 63
    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 64
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;

    const/4 p2, 0x0

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver-IA;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mLockoutReceiver:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;

    .line 65
    new-instance v2, Landroid/content/IntentFilter;

    const-string p0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v5, 0x2

    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addFailedAttemptForUser(I)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 93
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz v0, :cond_1d

    .line 94
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 96
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_26

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->scheduleLockoutResetForUser(I)V

    :cond_26
    return-void
.end method

.method public final cancelLockoutResetForUser(I)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getLockoutModeForUser(I)I
    .registers 6

    .line 140
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    const/4 v1, 0x2

    const/16 v2, 0x14

    if-eqz v0, :cond_12

    .line 141
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    move-result v0

    if-lt v0, v2, :cond_12

    return v1

    .line 145
    :cond_12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-lt v0, v2, :cond_1c

    return v1

    :cond_1c
    if-lez v0, :cond_2c

    .line 148
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 149
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_2c

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v3
.end method

.method public final getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lockout_reset_user"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 133
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingLockoutTime(I)I
    .registers 6

    const-string v0, "SemLockoutFrameworkImpl"

    const/4 v1, 0x0

    .line 104
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v1, -0x1

    goto :goto_5a

    :cond_c
    if-nez v2, :cond_f

    goto :goto_5a

    :cond_f
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5a

    .line 110
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_40

    long-to-int p0, p0

    if-gez p0, :cond_3e

    .line 112
    :try_start_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remaining lockout = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_3b

    goto :goto_5a

    :catch_3b
    move-exception p1

    move v1, p0

    goto :goto_41

    :cond_3e
    move v1, p0

    goto :goto_5a

    :catch_40
    move-exception p1

    .line 117
    :goto_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemainingLockoutTime: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return v1
.end method

.method public resetFailedAttemptsForUser(ZI)V
    .registers 5

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset biometric lockout for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clearAttemptCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemLockoutFrameworkImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-eqz p1, :cond_38

    .line 76
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz p1, :cond_32

    .line 77
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 80
    :cond_32
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    :cond_38
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 83
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->cancelLockoutResetForUser(I)V

    .line 87
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    invoke-interface {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;->onLockoutReset(I)V

    return-void
.end method

.method public final scheduleLockoutResetForUser(I)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x2

    .line 127
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
