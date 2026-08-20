.class public Lcom/android/server/biometrics/SemBiometricLockoutTracker;
.super Ljava/lang/Object;
.source "SemBiometricLockoutTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricLockout"

.field public static sInstance:Lcom/android/server/biometrics/SemBiometricLockoutTracker;


# instance fields
.field public final mFailedAttempts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;
    .registers 2

    const-class v0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->sInstance:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->sInstance:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 24
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->sInstance:Lcom/android/server/biometrics/SemBiometricLockoutTracker;
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
.method public declared-synchronized addFailedAttempt(II)V
    .registers 5

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 45
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 46
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_22

    .line 49
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 51
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFailedAttempts(I)I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 36
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 37
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39
    :cond_1b
    monitor-exit p0

    return v1

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 32
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetFailedAttempts(II)V
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->mFailedAttempts:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseIntArray;

    if-eqz p2, :cond_f

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 58
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
