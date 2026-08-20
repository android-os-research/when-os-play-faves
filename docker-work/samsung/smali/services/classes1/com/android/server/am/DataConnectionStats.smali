.class public Lcom/android/server/am/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;,
        Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public mDataState:I

.field public final mListenerHandler:Landroid/os/Handler;

.field public mNrState:I

.field public final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSimState:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmDataState(Lcom/android/server/am/DataConnectionStats;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNrState(Lcom/android/server/am/DataConnectionStats;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceState(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSignalStrength(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotePhoneDataConnectionState(Lcom/android/server/am/DataConnectionStats;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 55
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 58
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    new-instance v0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;

    invoke-direct {v0, p2}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public final hasService()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 145
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 146
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public final isCdma()Z
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final notePhoneDataConnectionState()V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_5

    return-void

    .line 92
    :cond_5
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_11

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v3

    :goto_12
    const/4 v1, 0x2

    if-nez v0, :cond_1b

    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 95
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->hasService()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    if-ne v0, v1, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    move v0, v2

    .line 97
    :goto_28
    iget-object v4, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 98
    invoke-virtual {v4, v1, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-nez v1, :cond_31

    goto :goto_35

    .line 100
    :cond_31
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    .line 103
    :goto_35
    iget v1, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3c

    const/16 v2, 0x14

    .line 111
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 112
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    .line 111
    invoke-interface {v1, v2, v0, v3, p0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZII)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    move-exception p0

    const-string v0, "DataConnectionStats"

    const-string v1, "Error noting data connection state"

    .line 114
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/server/am/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    :cond_12
    return-void
.end method

.method public startMonitoring()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateSimState(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "ss"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x1

    .line 121
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_4d

    :cond_13
    const-string v1, "READY"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 p1, 0x5

    .line 123
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_4d

    :cond_1f
    const-string v1, "LOCKED"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "reason"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PIN"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 p1, 0x2

    .line 128
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_4d

    :cond_3a
    const-string v0, "PUK"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x3

    .line 130
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_4d

    :cond_46
    const/4 p1, 0x4

    .line 132
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    goto :goto_4d

    :cond_4a
    const/4 p1, 0x0

    .line 135
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    :goto_4d
    return-void
.end method
