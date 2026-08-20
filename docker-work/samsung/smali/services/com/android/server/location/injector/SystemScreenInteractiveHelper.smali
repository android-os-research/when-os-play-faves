.class public Lcom/android/server/location/injector/SystemScreenInteractiveHelper;
.super Lcom/android/server/location/injector/ScreenInteractiveHelper;
.source "SystemScreenInteractiveHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public volatile mIsInteractive:Z

.field public mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/android/server/location/injector/ScreenInteractiveHelper;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    .line 41
    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 84
    iget-boolean p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    return p0
.end method

.method public onScreenInteractiveChanged(Z)V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 77
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->notifyScreenInteractiveChanged(Z)V

    return-void
.end method

.method public onSystemReady()V
    .registers 8

    .line 46
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    if-eqz v0, :cond_5

    return-void

    .line 50
    :cond_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 51
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 52
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;-><init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 67
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 53
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mReady:Z

    return-void
.end method
