.class public Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field public TAG:Ljava/lang/String;

.field public mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field public mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardServiceWrapper"

    .line 50
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "*** Started to create KeyguardServiceWrapper."

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 61
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 65
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*** Finished to create KeyguardServiceWrapper, mKeyguardStateMonitor="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .registers 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 94
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 4

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 103
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public dismissKeyguardToLaunch(Landroid/content/Intent;)V
    .registers 3

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->dismissKeyguardToLaunch(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 283
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->getCurrentUser()I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 223
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->onShowingStateChanged(ZI)V

    .line 226
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p1

    .line 228
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 318
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public isInputRestricted()Z
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    move-result p0

    return p0
.end method

.method public isKeyguardStateMonitorValid()Z
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    if-nez v0, :cond_22

    .line 373
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mKeyguardStateMonitor is null caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public isSecure(I)Z
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isSimLocked()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSimLocked()Z

    move-result p0

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public onBootCompleted()V
    .registers 3

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 256
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onDreamingStarted()V
    .registers 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 112
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 121
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .registers 4

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 140
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 3

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onFinishedWakingUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 159
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 195
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 177
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onScreenTurningOff()V
    .registers 3

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 186
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 3

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 168
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .registers 3

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onShortPowerPressedGoHome()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 274
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 130
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onStartedWakingUp(IZ)V
    .registers 4

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 150
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onSystemKeyPressed(I)V
    .registers 3

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->onSystemKeyPressed(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 292
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 213
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    .line 245
    :try_start_5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p1

    .line 247
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public setDexOccluded(ZZ)V
    .registers 4

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setDexOccluded(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 347
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .registers 3

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 204
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setOccluded(ZZ)V
    .registers 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 85
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 326
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setSwitchingUser(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 237
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public startFingerprintAuthentication()V
    .registers 3

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->startFingerprintAuthentication()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 357
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Remote Exception"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 6

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 265
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Remote Exception"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public startedEarlyWakingUp(I)V
    .registers 3

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->startedEarlyWakingUp(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 336
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p1

    .line 76
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Remote Exception"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
