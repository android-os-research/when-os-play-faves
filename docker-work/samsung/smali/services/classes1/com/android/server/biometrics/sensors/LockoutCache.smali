.class public Lcom/android/server/biometrics/sensors/LockoutCache;
.super Ljava/lang/Object;
.source "LockoutCache.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# static fields
.field public static final TAG:Ljava/lang/String; = "LockoutCache"


# instance fields
.field public final mUserLockoutStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public getLockoutModeForUser(I)I
    .registers 4

    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setLockoutModeForUser(II)V
    .registers 6

    const-string v0, "LockoutCache"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockout for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-enter p0

    .line 38
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p1
.end method
