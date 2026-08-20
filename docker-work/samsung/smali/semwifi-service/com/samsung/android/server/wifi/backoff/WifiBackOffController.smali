.class public Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.super Ljava/lang/Object;
.source "WifiBackOffController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;,
        Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Controller"


# instance fields
.field private final backOffStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/backoff/BackOffStats;",
            ">;"
        }
    .end annotation
.end field

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

.field private final injector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

.field private final sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private final wifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;


# direct methods
.method public static synthetic $r8$lambda$Jfq883_xeVlFbFrVNOJheeFhodQ(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfacade(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->wifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkCountryIso(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 11

    .line 50
    new-instance v5, Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {v5, p1, p2, p4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->wifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 58
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->injector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 59
    iput-object p4, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 60
    iput-object p5, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 62
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    .line 63
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)V

    .line 83
    new-instance p3, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController-IA;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    .line 84
    invoke-virtual {p5, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V

    .line 85
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result p3

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;ZLcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    return-void
.end method

.method private checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->injector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 127
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_d
    const-string p0, ""

    :goto_f
    return-object p0
.end method

.method private getServiceState()Landroid/telephony/ServiceState;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->checkAndGetTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffStats;)V
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blockFccChannelBackoff(Z)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setEnable(Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "WifiBackOffController:"

    .line 171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->dump(Ljava/io/PrintWriter;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->dump(Ljava/io/PrintWriter;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->dump(Ljava/io/PrintWriter;)V

    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public forceEnable5GmmWaveBackoff(Ljava/lang/String;Z)V
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->forceEnableMWaveBackoff(Ljava/lang/String;Z)V

    return-void
.end method

.method public forceEnableFccChannelBackoff(Ljava/lang/String;Z)V
    .registers 3

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->forceEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public getBackOffCountForCurrentNetwork(Ljava/lang/String;)I
    .registers 3

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalTriggerCount()I

    move-result p0

    return p0
.end method

.method public getBackOffDurationSecondForCurrentNetwork(Ljava/lang/String;)I
    .registers 4

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getCurrentBackOffType(Ljava/lang/String;)I
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getCurrentSarBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object v0

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getCurrentBackOffMode(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->toInt()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->toInt()I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->isGripSensorMonitorEnabled()Z

    move-result p0

    return p0
.end method

.method public notifyWifiConnection(Ljava/lang/String;Z)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    if-eqz p2, :cond_1c

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->startGathering(I)V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->backOffStats:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 110
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->stopGathering()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    :goto_1f
    return-void
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setGripSensorMonitorEnabled(Z)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->start(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->update(Ljava/lang/String;)V

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->stop(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->resetState(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->resetState(Ljava/lang/String;)V

    return-void
.end method

.method public triggerBackoffRoutine(Z)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->sarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->triggerBackoffRoutine(Z)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->fccController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetup(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->mWaveSub6Controller:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->checkAndSetup(Ljava/lang/String;)V

    return-void
.end method
