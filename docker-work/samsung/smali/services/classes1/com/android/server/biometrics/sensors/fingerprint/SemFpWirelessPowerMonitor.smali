.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;
.super Ljava/lang/Object;
.source "SemFpWirelessPowerMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;
    }
.end annotation


# static fields
.field public static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final AUTH_REJECT_COUNT_THRESHOLDS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIRELESS_POWER_SHARING_ENABLED:Ljava/lang/String; = "enable"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERMISSION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.permission.wirelesspowersharing"


# instance fields
.field public mAuthRejectCountWhileWirelessPower:I

.field public mBrForWirelessPower:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

.field public mIsWirelessPowerRunning:Z

.field public mIsWirelessPowerSharingRunning:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleActionOfBatteryChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->handleActionOfBatteryChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleActionOfWirelessPowerSharing(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->handleActionOfWirelessPowerSharing(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 56
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    .line 64
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 65
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    return-void
.end method


# virtual methods
.method public final dispatchWirelessPowerStatus(Z)V
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 136
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-eqz p1, :cond_f

    .line 138
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onSemWirelessPowerEnabled()V

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    .line 142
    :goto_12
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v0, 0x1d

    .line 143
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    const/4 v1, 0x0

    .line 142
    invoke-interface {p1, v0, p0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    return-void
.end method

.method public getAuthRejectCountWhileWirelessPowerForTesting()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    return p0
.end method

.method public final handleActionOfBatteryChanged()V
    .registers 3

    .line 116
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 117
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    goto :goto_1c

    .line 120
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final handleActionOfWirelessPowerSharing(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "enable"

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->dispatchWirelessPowerStatus(Z)V

    return-void
.end method

.method public onAuthenticated(Z)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    .line 75
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-eqz p1, :cond_1a

    .line 76
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c

    .line 77
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;->showWirelessChargerErrorToastMessage(Landroid/content/Context;)V

    .line 78
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    goto :goto_1c

    .line 81
    :cond_1a
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mAuthRejectCountWhileWirelessPower:I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onEnrollStarted(I)V
    .registers 2

    .line 87
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    if-eqz p1, :cond_9

    .line 88
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onSemWirelessPowerEnabled()V

    :cond_9
    return-void
.end method

.method public final registerBroadcast()V
    .registers 12

    .line 93
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 96
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    .line 107
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 110
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mBrForWirelessPower:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mH:Landroid/os/Handler;

    const-string v9, "com.samsung.android.permission.wirelesspowersharing"

    invoke-static/range {v5 .. v10}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public setWirelessPowerSharingStatusForTesting(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerSharingRunning:Z

    return-void
.end method

.method public setWirelessPowerStatusForTesting(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 148
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mIsWirelessPowerRunning:Z

    return-void
.end method

.method public start()V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->registerBroadcast()V

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    return-void
.end method
