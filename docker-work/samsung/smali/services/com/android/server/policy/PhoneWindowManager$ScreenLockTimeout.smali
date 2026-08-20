.class public Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenLockTimeout"
.end annotation


# instance fields
.field public options:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 6178
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 6183
    monitor-enter p0

    .line 6184
    :try_start_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v0, :cond_d

    const-string v0, "WindowManager"

    const-string/jumbo v1, "mScreenLockTimeout activating keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_18

    .line 6186
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 6188
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 6189
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fputmLockNowPending(Lcom/android/server/policy/PhoneWindowManager;Z)V

    const/4 v0, 0x0

    .line 6190
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 6191
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2c

    .line 6195
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendScreenOffEvent()V

    return-void

    :catchall_2c
    move-exception v0

    .line 6191
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public setLockOptions(Landroid/os/Bundle;)V
    .registers 2

    .line 6201
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    return-void
.end method
