.class public Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;
.super Ljava/lang/Object;
.source "SemWifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;
    }
.end annotation


# static fields
.field private static final AWARE_INTERFACE_NAME:Ljava/lang/String; = "aware_data0"

.field private static final PARAM_MAC_RANDOM_INTERVAL_SEC_DEFAULT:I = 0x708

.field private static final PARAM_PRIVATE_COMMAND_ENABLE_MERGE_REQUEST:I = 0x40000000

.field private static final PARAM_PRIVATE_COMMAND_VENDOR:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "SemWifiAwareStateManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbg:Z

.field mNwService:Landroid/os/INetworkManagementService;

.field private mReqBlockWifiScan:Z

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private privateCommand:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/wifi/aware/WifiAwareManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->setLegacyScanningEnable(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    const/16 v0, 0x708

    .line 78
    iput v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    return-void
.end method

.method private convertCommandToAwareParams(Landroid/net/wifi/aware/AwareParams;I)V
    .registers 3

    .line 136
    invoke-virtual {p1, p2}, Landroid/net/wifi/aware/AwareParams;->setMacRandomizationIntervalSeconds(I)V

    return-void
.end method

.method private registerNetworkObserver()V
    .registers 5

    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    const-string v1, "SemWifiAwareStateManager"

    if-eqz v0, :cond_b

    const-string v0, "registerNetworkObserver"

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v0, "network_management"

    .line 160
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 163
    :try_start_17
    new-instance v2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver-IA;)V

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_3a

    :catch_21
    move-exception p0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register NetworkObserver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private setLegacyScanningEnable(Z)V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_5

    return-void

    .line 197
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isScanningEnabled()Z

    move-result v0

    const-string v1, "SemWifiAwareStateManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_22

    if-eqz v0, :cond_22

    .line 200
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    if-eqz p1, :cond_1a

    const-string p1, "setLegacyScanningEnable: false"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1a
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    goto :goto_38

    :cond_22
    if-eqz p1, :cond_38

    .line 203
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    if-eqz p1, :cond_38

    .line 204
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    if-eqz p1, :cond_31

    const-string p1, "setLegacyScanningEnable: true"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_31
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mReqBlockWifiScan:Z

    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    return-void
.end method

.method public setClusterMergingEnabled(Z)V
    .registers 5

    .line 140
    new-instance v0, Landroid/net/wifi/aware/AwareParams;

    invoke-direct {v0}, Landroid/net/wifi/aware/AwareParams;-><init>()V

    .line 141
    iget v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    if-eqz p1, :cond_14

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 144
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    goto :goto_1a

    :cond_14
    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    .line 146
    iput v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    .line 148
    :goto_1a
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mDbg:Z

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Private Command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemWifiAwareStateManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3e
    iget p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->convertCommandToAwareParams(Landroid/net/wifi/aware/AwareParams;I)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/aware/WifiAwareManager;->setAwareParams(Landroid/net/wifi/aware/AwareParams;)V

    .line 153
    iget p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->privateCommand:I

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    const-string p2, "SemWifiAwareStateManager"

    const-string v0, "start()"

    .line 87
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string p2, "wifiaware"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi_p2p"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$1;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startLate()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->registerNetworkObserver()V

    return-void
.end method
