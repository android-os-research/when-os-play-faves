.class public Lcom/android/server/biometrics/SemBiometricBoostingManager;
.super Ljava/lang/Object;
.source "SemBiometricBoostingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
    }
.end annotation


# static fields
.field public static final ACTION_BIO_AUTH_START:Ljava/lang/String; = "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

.field public static final ACTION_BIO_AUTH_STOP:Ljava/lang/String; = "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

.field public static final HINT_TYPE_BIOMETRICS_FINGER:I = 0xdad

.field public static final TAG:Ljava/lang/String; = "BiometricsBoosting"

.field public static final TIME_FINGERPRINT_DVFS_NORMAL:I = 0x7d0

.field public static sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;


# instance fields
.field public final mDvfsMgrs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/os/SemDvfsManager;",
            ">;"
        }
    .end annotation
.end field

.field public mIsEnabledSsrm:Z

.field public final mReleasers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .registers 2

    const-class v0, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 50
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized acquireDvfs(Landroid/content/Context;IILjava/lang/String;I)V
    .registers 9

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_27

    .line 67
    invoke-static {p1, p4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string p1, "BiometricsBoosting"

    const-string p2, "acquireDvfs: can\'t get SemDvfsManager"

    .line 69
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_af

    .line 70
    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    const-string p4, "biometrics_service"

    .line 72
    invoke-virtual {v0, p4}, Lcom/samsung/android/os/SemDvfsManager;->setProcName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 74
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    :cond_27
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p2, :cond_41

    const-string p4, "BiometricsBoosting"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireDvfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_41
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 82
    iget-object p4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    if-nez p4, :cond_59

    .line 84
    new-instance p4, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    invoke-direct {p4, p1, p3}, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;-><init>(Landroid/content/Context;I)V

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_60

    .line 87
    :cond_59
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    :goto_60
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    int-to-long v0, p5

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->disableGpisHint(Landroid/content/Context;)V

    .line 91
    iget-boolean p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-nez p3, :cond_77

    const-string p3, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

    .line 92
    invoke-virtual {p0, p1, p3}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    :cond_77
    if-eqz p2, :cond_ad

    const-string p1, "BiometricsBoosting"

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "acquireDvfs: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_1a .. :try_end_ad} :catchall_af

    .line 99
    :cond_ad
    monitor-exit p0

    return-void

    :catchall_af
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public acquireFingerprintDvfs(Landroid/content/Context;I)V
    .registers 9

    const/16 v2, 0xdad

    const/4 v3, 0x2

    const-string v4, "FINGERPRINT_SERVICE"

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method public final disableGpisHint(Landroid/content/Context;)V
    .registers 3

    const-string p0, "CustomFrequencyManagerService"

    .line 124
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CustomFrequencyManager;

    if-eqz p0, :cond_16

    .line 127
    :try_start_a
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager;->disableGpisHint()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "BiometricsBoosting"

    const-string v0, "acquireDvfs: failed to disableGipsHint"

    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public declared-synchronized release(Landroid/content/Context;I)V
    .registers 5

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 107
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 111
    :cond_27
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    if-eqz v0, :cond_38

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    :cond_38
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 116
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_74

    const-string p1, "BiometricsBoosting"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 118
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_76

    .line 120
    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string p0, "BiometricsBoosting"

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    :try_start_7
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_2a

    :catch_10
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendBroadcastForBoosting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method
