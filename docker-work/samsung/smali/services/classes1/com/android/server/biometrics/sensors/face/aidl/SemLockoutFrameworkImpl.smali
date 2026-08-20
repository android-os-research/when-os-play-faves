.class public Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;
.super Lcom/android/server/biometrics/sensors/LockoutCache;
.source "SemLockoutFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

.field public static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field public static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field public static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field public static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field public static final RESET_FACE_LOCKOUT:Ljava/lang/String; = "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

.field public static final TAG:Ljava/lang/String; = "SemLockoutFrameworkImpl"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mLockoutFailedAttempts:Landroid/util/SparseIntArray;

.field public final mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public mLockoutRunningTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 51
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    .line 52
    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    .line 53
    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public addFailedAttemptForUser(I)V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 83
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz v1, :cond_24

    .line 84
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 86
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result v1

    if-eqz v1, :cond_2d

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->scheduleLockoutResetForUser(I)V

    .line 89
    :cond_2d
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_4f

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFailedAttemptForUser : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemLockoutFrameworkImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method public final cancelLockoutResetForUser(I)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final getLockoutMode(I)I
    .registers 13

    .line 105
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    const-string v1, "SemLockoutFrameworkImpl"

    const/4 v2, 0x2

    const/16 v3, 0x14

    if-eqz v0, :cond_19

    .line 106
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    move-result v0

    if-lt v0, v3, :cond_19

    const-string p0, "LO : integrated"

    .line 107
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 112
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const-wide/16 v9, 0x7530

    add-long/2addr v6, v9

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iput-wide v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutRunningTime:J

    if-lt p1, v3, :cond_35

    goto :goto_47

    :cond_35
    const/4 p0, 0x5

    if-eq p1, p0, :cond_40

    const/16 p0, 0xa

    if-eq p1, p0, :cond_40

    const/16 p0, 0xf

    if-ne p1, p0, :cond_46

    :cond_40
    cmp-long p0, v6, v4

    if-lez p0, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    move v2, v8

    .line 123
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "LO : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getLockoutModeForUser(I)I
    .registers 2

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result p0

    return p0
.end method

.method public final getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 4

    .line 138
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lockout_reset_user"

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 138
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingLockoutTime(I)I
    .registers 4

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 99
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutRunningTime:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final isApplyingAvoidLockout(Landroid/os/Bundle;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_f

    const-string/jumbo v0, "sem_privileged_attr"

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    move p0, v0

    :cond_f
    return p0
.end method

.method public resetFailedAttempts(Z)V
    .registers 3

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public resetFailedAttemptsForUser(ZI)V
    .registers 6

    .line 57
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "SemLockoutFrameworkImpl"

    if-eqz v0, :cond_23

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetFailedAttempts : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-eqz p1, :cond_49

    .line 61
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz p1, :cond_32

    .line 62
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 65
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result p1

    if-eqz p1, :cond_43

    const-string/jumbo p1, "resetFailedAttemptsForUser : onLockoutReset"

    .line 66
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    invoke-interface {p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;->onLockoutReset(I)V

    .line 69
    :cond_43
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    :cond_49
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->cancelLockoutResetForUser(I)V

    return-void
.end method

.method public final scheduleLockoutResetForUser(I)V
    .registers 7

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x2

    .line 132
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setCurrentUserLockoutMode(I)V
    .registers 2

    return-void
.end method
