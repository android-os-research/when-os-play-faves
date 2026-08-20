.class public Lcom/android/server/CachedDeviceStateService;
.super Lcom/android/server/SystemService;
.source "CachedDeviceStateService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CachedDeviceStateService"


# instance fields
.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mDeviceState:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p1}, Lcom/android/internal/os/CachedDeviceState;-><init>()V

    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    .line 40
    new-instance p1, Lcom/android/server/CachedDeviceStateService$1;

    invoke-direct {p1, p0}, Lcom/android/server/CachedDeviceStateService$1;-><init>(Lcom/android/server/CachedDeviceStateService;)V

    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_3c

    .line 72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {p0}, Lcom/android/server/CachedDeviceStateService;->queryIsCharging()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/CachedDeviceStateService;->queryScreenInteractive(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    :cond_3c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 66
    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState;->getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final queryIsCharging()Z
    .registers 3

    .line 84
    const-class p0, Landroid/os/BatteryManagerInternal;

    .line 85
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManagerInternal;

    const/4 v0, 0x1

    if-nez p0, :cond_13

    const-string p0, "CachedDeviceStateService"

    const-string v1, "BatteryManager null while starting CachedDeviceStateService"

    .line 87
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 91
    :cond_13
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final queryScreenInteractive(Landroid/content/Context;)Z
    .registers 2

    .line 96
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_13

    const-string p0, "CachedDeviceStateService"

    const-string p1, "PowerManager null while starting CachedDeviceStateService"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_13
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method
