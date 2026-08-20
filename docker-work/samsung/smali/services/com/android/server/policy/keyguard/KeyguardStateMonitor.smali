.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field public final mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

.field public mCurrentUserId:I

.field public volatile mInputRestricted:Z

.field public volatile mIsShowing:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public volatile mSimSecure:Z

.field public volatile mTrusted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 56
    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 59
    :try_start_1c
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    const-string p1, "KeyguardStateMonitor"

    const-string p2, "Remote Exception"

    .line 61
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "mCurrentUserId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUser()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    return p0
.end method

.method public isInputRestricted()Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return p0
.end method

.method public isSecure(I)Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return p0
.end method

.method public isSimLocked()Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    return p0
.end method

.method public onInputRestrictedStateChanged(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return-void
.end method

.method public onShowingStateChanged(ZI)V
    .registers 4

    .line 87
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    if-eq p2, v0, :cond_5

    return-void

    .line 89
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 91
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onShowingChanged()V

    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return-void
.end method

.method public onTrustedChanged(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 111
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onTrustedChanged()V

    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 101
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
