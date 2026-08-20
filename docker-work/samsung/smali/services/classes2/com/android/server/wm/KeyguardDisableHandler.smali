.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field public final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field public mCurrentUser:I

.field public mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field public final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 126
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 51
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    const-string v1, "WindowManager"

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 52
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 5

    .line 140
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 141
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 5

    .line 75
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p3

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {p0, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "  KeyguardDisable Token Info:"

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    if-eqz v0, :cond_c

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/server/utils/UserTokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 91
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    if-eqz p0, :cond_13

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/utils/UserTokenWatcher;->dump(Ljava/io/PrintWriter;)V

    :cond_13
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;II)V
    .registers 4

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p2

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {p0, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    const/4 p1, -0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 59
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final shouldKeyguardBeEnabled(I)Z
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    xor-int/2addr v0, v3

    if-eqz v1, :cond_24

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_24
    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2e
    move v2, v3

    :cond_2f
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public updateKeyguardEnabled(I)V
    .registers 2

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 65
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final updateKeyguardEnabledLocked(I)V
    .registers 4

    .line 69
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_10

    .line 70
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    :cond_10
    return-void
.end method

.method public final watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .registers 4

    .line 98
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p0

    :cond_9
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_14

    .line 100
    instance-of p1, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz p1, :cond_14

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p0

    .line 107
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only apps can use the KeyguardLock API"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
