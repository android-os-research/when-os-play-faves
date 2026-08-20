.class public final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"


# instance fields
.field public mBlurDisabledSetting:Z

.field public volatile mBlurEnabled:Z

.field public final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ICrossWindowBlurEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCriticalThermalStatus:Z

.field public mInPowerSaveMode:Z

.field public final mLock:Ljava/lang/Object;

.field public mTunnelModeEnabled:Z

.field public mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;


# direct methods
.method public static synthetic $r8$lambda$MvA4SW0VwlFVTadaS8sztsY4N2Q(Lcom/android/server/wm/BlurController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BlurController;->lambda$new$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBlurDisabledSetting(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInPowerSaveMode(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTunnelModeEnabled(Lcom/android/server/wm/BlurController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBlurDisabledSetting(Lcom/android/server/wm/BlurController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBlurEnabled(Lcom/android/server/wm/BlurController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 53
    new-instance v1, Lcom/android/server/wm/BlurController$1;

    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    new-instance v2, Lcom/android/server/wm/BlurController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "disable_window_blurs"

    .line 81
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/BlurController$3;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V

    .line 80
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 94
    new-instance p1, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BlurController;)V

    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_65

    const/4 v0, 0x1

    :cond_65
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    .line 100
    iget-object p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    invoke-static {p1}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .registers 3

    const/4 v0, 0x4

    if-lt p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 95
    :goto_6
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method


# virtual methods
.method public final getBlurDisabledSetting()Z
    .registers 3

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_window_blurs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public getBlurEnabled()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    return p0
.end method

.method public final notifyBlurEnabledChangedLocked(Z)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 137
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/ICrossWindowBlurEnabledListener;

    .line 139
    :try_start_12
    invoke-interface {v1, p1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_6

    goto :goto_6

    .line 143
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    return p0
.end method

.method public unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateBlurEnabled()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 124
    :goto_1a
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    if-ne v2, v1, :cond_20

    .line 125
    monitor-exit v0

    return-void

    .line 127
    :cond_20
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BlurController;->notifyBlurEnabledChangedLocked(Z)V

    .line 129
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method
